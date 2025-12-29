*! version 3.0 dec2025 Nicola Tommasi

capture program drop dest_prov
program define dest_prov
version 13

**! version 3.0
**  aggiunte le nuove province sarde (2025)
**  aggiunto supporto per Codice NUTS3 2024
**  compatibile con la classificazione delle province dal 1948

**! version 2.3
**  aggiunto supporto per Codice NUTS3 2021
**  aggiunto supporto per Codice ITTER di Istat

**! version 2.1
**  aggiunta la provincia Sud Sardegna (SU)

**! version 2.0
**  aggiunte le opzioni per creare le variabili
**  codice regione Istat (gregio)
**  codice nuts3 (gnuts3)
**  codice nuts2 (gnuts2)
**  codice nuts1 (gnuts1)

**! version 1.1.0  06nov2014
**  aggiunta opzione tl(full|sigla) per fare il label con nome intero (default) o con la sigla della provincia
**  aggiunta opzione ignore
**  aggiunto supporto per Codice NUTS3 2010

**! version 1.0.0  02oct2014
** converte anche le sigle delle provincie
** tutte le variabili usate nel comando sono di tipo tempvar
** introduzione  di contract _CLONE e successivo merge
** di fatto parallel non serve più (eliminata la relativa opzione)
** eliminazione di codebook, problems che per dataset molto numerosi poteva allungare i tempi di esecuzione
** il label della variabile con i codici delle provincie corrisponde al nome della variabile stessa

**! version 0.0.1  TomaHawk  28aug2014


syntax varlist (max=1) [if] [in] , [ GENerate(name) time(varname numeric min=1 max=1) onlylab tl(str) ignore itter ///
                                     gregio(name) macro3(name) macro5(name) ///
                                     gnuts3(name) gnuts2(name) gnuts1(name) nuts(integer 2010) ///
                                     gitter(name) gtarga(name)]
marksample touse, strok
tempvar dups clone ID _CLONE _NV
tempfile TMPF

if "`time'"=="" {
  tempvar time
  gen `time'= real(substr("`c(current_date)'",-4,.))
}
tempvar TIME
qui clonevar `TIME' = `time'
if "`onlylab'"!="" confirm numeric variable `varlist'
else confirm string variable `varlist'

if `nuts'==. local nuts = 2024
if inlist(`nuts',2003,2006,2010,2013,2016,2021,2024)!=1 {
  di in red "La revisione NUTS deve essere 2003, 2006, 2010, 2013, 2016, 2021, 2024"
  exit _rc
}
tempvar tmpvarlist

if "`generate'" == "" & "`onlylab'"=="" local nv "cod_prov"
else if "`generate'" != "" & "`onlylab'"==""   local nv "`generate'"
else if "`onlylab'"!=""   local nv "`tmpvarlist'"

  capture confirm variable `nv', exact
  if !_rc {
    di "variable `nv' already exists"
    exit _rc
  }
  capture label drop `nv'

   if "`tl'" == "" local tl "full"
   assert "`tl'" == "full" | "`tl'" == "sigla"

   qui clonevar `_CLONE' = `varlist'

   if "`onlylab'"=="" {
     qui replace `_CLONE' = trim(`_CLONE')
     qui replace `_CLONE' = lower(`_CLONE')
   }

   gen `ID' = _n
   preserve
   contract `_CLONE' `TIME'
   drop _freq

   if "`onlylab'"=="" {
      qui gen int `_NV' = .
      qui include "`c(sysdir_plus)'d/dest_prov.do"
      qui clonevar `nv' = `_NV'
      drop `_NV'
   }
   else qui clonevar `nv' = `_CLONE'



if "`gregio'" != "" | "`macro3'" != "" | "`macro5'" != "" | "`gnuts3'" != "" | "`gnuts2'" != "" | "`gnuts1'" != ""  {
tempvar tmpregio
qui recode `nv' (1 2 3 4 5 6  96 103 = 1 "Piemonte")   ///
            (7 = 2 "Valle d'Aosta")  ///
            (8 9 10 11 = 7 "Liguria")  ///
            (12 13 14 15 16 17 18 19 20 97 98 108 = 3 "Lombardia") ///
            (21 22 = 4 "Trentino-Alto Adige")  ///
            (23 24 25 26 27 28 29 = 5 "Veneto") ///
            (30 31 32 93 = 6 "Friuli-Venezia Giulia") ///
            (33 34 35 36 37 38 39 40 99 = 8 "Emilia-Romagna") ///
            (41 42 43 44 109 = 11 "Marche") ///
            (45 46 47 48 49 50 51 52 53 100 = 9 "Toscana") ///
            (54 55 = 10 "Umbria")  ///
            (56 57 58 59 60 = 12 "Lazio") ///
            (61 62 63 64 65 = 15 "Campania")  ///
            (66 67 68 69 = 13 "Abruzzo") ///
            (70 94 = 14 "Molise") ///
            (71 72 73 74 75 110 = 16 "Puglia") ///
            (76 77 = 17 "Basilicata") ///
            (78 79 80 101 102 = 18 "Calabria") ///
            (81 82 83 84 85 86 87 88 89 = 19 "Sicilia") ///
            (90 91 92 95 104 105 106 107 111 = 20 "Sardegna") ///
            (*=.), gen(`tmpregio') label(`gregio')


if "`gregio'" != "" {
  clonevar `gregio' = `tmpregio'
  qui assert `nv'==. if `gregio'==.
  label var `gregio' "Regione"
  }

if "`macro3'" != "" {
  qui recode `tmpregio' (1/8=1 "Nord") (9/12=2 "Centro") (13/20=3 "Sud e Isole"), gen(`macro3')  label(`macro3')
  qui assert `nv'==. if `macro3'==.
  label var `macro3' "Macro Regioni"
  }

if "`macro5'" != "" {
  qui recode `tmpregio' (1 2 3 7=1 "Nord-Ovest") (4 5 6 8=2 "Nord-Est") (9/12=3 "Centro") (13/18=4 "Sud") (19 20=5 "Isole"), gen(`macro5')  label(`macro5')
  qui assert `nv'==. if `macro5'==.
  label var `macro5' "Macro Regioni"
  }

if "`gnuts3'" != "" {
  tempname labnuts3
  tempvar gnuts3num
  clonevar `gnuts3num' = `nv'

  if `nuts'==2003 label define `labnuts3' 1 "ITC11" 2 "ITC12" 96 "ITC13" 103 "ITC14" 3 "ITC15" 4 "ITC16" 5 "ITC17" 6 "ITC18"  ///
            7 "ITC20" ///
            8 "ITC31" 9 "ITC32" 10 "ITC33" 11 "ITC34" ///
            12 "ITC41" 13 "ITC42" 97 "ITC43" 14 "ITC44" 15 "ITC45" 16 "ITC46" 17 "ITC47" 18 "ITC48"  98 "ITC49" 19 "ITC4A" 20 "ITC4B" ///
            21 "ITD10" 22 "ITD20"  ///
            23 "ITD31" 24 "ITD32" 25 "ITD33" 26 "ITD34" 27 "ITD35" 28 "ITD36" 29 "ITD37" ///
            93 "ITD41" 30 "ITD42" 31 "ITD43" 32 "ITD44" ///
            33 "ITD51"  34 "ITD52" 35 "ITD53" 36 "ITD54" 38 "ITD56" 37 "ITD55" 39 "ITD57" 40 "ITD58" 99 "ITD59" ///
            45 "ITE11" 46 "ITE12" 47 "ITE13" 48 "ITE14" 100 "ITE15" 49 "ITE16" 50 "ITE17" 51 "ITE18" 52 "ITE19" 53 "ITE1A" ///
            54 "ITE21" 55 "ITE22" ///
            41 "ITE31" 42 "ITE32" 43 "ITE33" 44 "ITE34" ///
            56 "ITE41" 57 "ITE42" 58 "ITE43" 59 "ITE44" 60 "ITE45" ///
            66 "ITF11" 67 "ITF12" 68 "ITF13" 69 "ITF14"  ///
            94 "ITF21" 70 "ITF22"  ///
            61 "ITF31" 62 "ITF32" 63 "ITF33" 64 "ITF34" 65 "ITF35" ///
            71 "ITF41" 72 "ITF42" 73 "ITF43" 74 "ITF44" 75 "ITF45" ///
            76 "ITF51" 77 "ITF52" ///
            78 "ITF61" 101 "ITF62" 79 "ITF63" 102 "ITF64" 80 "ITF65"  ///
            81 "ITG11" 82 "ITG12" 83 "ITG13" 84 "ITG14" 85 "ITG15" 86 "ITG16" 87 "ITG17" 88 "ITG18" 89 "ITG19" ///
            90 "ITG21" 91 "ITG22" 95 "ITG23" 92 "ITG24"

  **2003 --> 2006 cambiano tutti i codici della Sardegna
  if `nuts'==2006 label define `labnuts3' 1 "ITC11" 2 "ITC12" 96 "ITC13" 103 "ITC14" 3 "ITC15" 4 "ITC16" 5 "ITC17" 6 "ITC18"  ///
            7 "ITC20" ///
            8 "ITC31" 9 "ITC32" 10 "ITC33" 11 "ITC34" ///
            12 "ITC41" 13 "ITC42" 97 "ITC43" 14 "ITC44" 15 "ITC45" 16 "ITC46" 17 "ITC47" 18 "ITC48"  98 "ITC49" 19 "ITC4A" 20 "ITC4B" ///
            21 "ITD10" 22 "ITD20"  ///
            23 "ITD31" 24 "ITD32" 25 "ITD33" 26 "ITD34" 27 "ITD35" 28 "ITD36" 29 "ITD37" ///
            93 "ITD41" 30 "ITD42" 31 "ITD43" 32 "ITD44" ///
            33 "ITD51"  34 "ITD52" 35 "ITD53" 36 "ITD54" 38 "ITD56" 37 "ITD55" 39 "ITD57" 40 "ITD58" 99 "ITD59" ///
            45 "ITE11" 46 "ITE12" 47 "ITE13" 48 "ITE14" 100 "ITE15" 49 "ITE16" 50 "ITE17" 51 "ITE18" 52 "ITE19" 53 "ITE1A" ///
            54 "ITE21" 55 "ITE22" ///
            41 "ITE31" 42 "ITE32" 43 "ITE33" 44 "ITE34" ///
            56 "ITE41" 57 "ITE42" 58 "ITE43" 59 "ITE44" 60 "ITE45" ///
            66 "ITF11" 67 "ITF12" 68 "ITF13" 69 "ITF14"  ///
            94 "ITF21" 70 "ITF22"  ///
            61 "ITF31" 62 "ITF32" 63 "ITF33" 64 "ITF34" 65 "ITF35" ///
            71 "ITF41" 72 "ITF42" 73 "ITF43" 74 "ITF44" 75 "ITF45" ///
            76 "ITF51" 77 "ITF52" ///
            78 "ITF61" 101 "ITF62" 79 "ITF63" 102 "ITF64" 80 "ITF65"  ///
            81 "ITG11" 82 "ITG12" 83 "ITG13" 84 "ITG14" 85 "ITG15" 86 "ITG16" 87 "ITG17" 88 "ITG18" 89 "ITG19" ///
            90 "ITG25" 91 "ITG26" 92 "ITG27" 95 "ITG28" 104 "ITG29" 105 "ITG2A" 106 "ITG2B" 107 "ITG2C"

  **2006 --> 2010: ITE?? --> ITI??
  **2010 == 2013 == 2016
  if inlist(`nuts',2010,2013,2016) label define `labnuts3' 1 "ITC11" 2 "ITC12" 3 "ITC15"  4 "ITC16" 5 "ITC17" 6 "ITC18" 96 "ITC13" 103 "ITC14"   ///
            7 "ITC20" ///
            8 "ITC31"  9 "ITC32" 10 "ITC33" 11 "ITC34"  ///
            12 "ITC41" 13 "ITC42" 14 "ITC44" 15 "ITC4C" 16 "ITC46" 17 "ITC47" 18 "ITC48" 19 "ITC4A" 20 "ITC4B" 97 "ITC43" 98 "ITC49" 108 "ITC4D" ///
            21 "ITH10" 22 "ITH20" ///
            23 "ITH31" 24 "ITH32" 25 "ITH33" 26 "ITH34" 27 "ITH35" 28 "ITH36" 29 "ITH37" ///
            30 "ITH42" 31 "ITH43" 32 "ITH44" 93 "ITH41" ///
            33 "ITH51" 34 "ITH52" 35 "ITH53" 36 "ITH54" 37 "ITH55" 38 "ITH56" 39 "ITH57" 40 "ITH58" 99 "ITH59" ///
            41 "ITI31" 42 "ITI32" 43 "ITI33" 44 "ITI34" 109 "ITI35"  ///
            45 "ITI11" 46 "ITI12" 47 "ITI13" 48 "ITI14" 49 "ITI16" 50 "ITI17" 51 "ITI18" 52 "ITI19" 53 "ITI1A" 100 "ITI15" ///
            54 "ITI21" 55 "ITI22"  ///
            56 "ITI41" 57 "ITI42" 58 "ITI43" 59 "ITI44" 60 "ITI45" ///
            61 "ITF31" 62 "ITF32" 63 "ITF33" 64 "ITF34" 65 "ITF35"  ///
            66 "ITF11" 67 "ITF12" 68 "ITF13" 69 "ITF14" ///
            70 "ITF22" 94 "ITF21" ///
            71 "ITF46" 72 "ITF47" 73 "ITF43" 74 "ITF44" 75 "ITF45" 110 "ITF48" ///
            76 "ITF51" 77 "ITF52" ///
            78 "ITF61" 79 "ITF63" 80 "ITF65" 101 "ITF62" 102 "ITF64" ///
            81 "ITG11" 82 "ITG12" 83 "ITG13" 84 "ITG14" 85 "ITG15" 86 "ITG16" 87 "ITG17" 88 "ITG18" 89 "ITG19" ///
            90 "ITG25" 91 "ITG26" 92 "ITG27" 95 "ITG28" 104 "ITG29" 105 "ITG2A" 106 "ITG2B" 107 "ITG2C"

  **di nuovo, cambiano i codici delle province sarde
  **2021 == 2024
  if inlist(`nuts',2021,2024) label define `labnuts3' 1 "ITC11" 2 "ITC12" 3 "ITC15"  4 "ITC16" 5 "ITC17" 6 "ITC18" 96 "ITC13" 103 "ITC14"   ///
            7 "ITC20" ///
            8 "ITC31"  9 "ITC32" 10 "ITC33" 11 "ITC34"  ///
            12 "ITC41" 13 "ITC42" 14 "ITC44" 15 "ITC4C" 16 "ITC46" 17 "ITC47" 18 "ITC48" 19 "ITC4A" 20 "ITC4B" 97 "ITC43" 98 "ITC49" 108 "ITC4D" ///
            21 "ITH10" 22 "ITH20" ///
            23 "ITH31" 24 "ITH32" 25 "ITH33" 26 "ITH34" 27 "ITH35" 28 "ITH36" 29 "ITH37" ///
            30 "ITH42" 31 "ITH43" 32 "ITH44" 93 "ITH41" ///
            33 "ITH51" 34 "ITH52" 35 "ITH53" 36 "ITH54" 37 "ITH55" 38 "ITH56" 39 "ITH57" 40 "ITH58" 99 "ITH59" ///
            41 "ITI31" 42 "ITI32" 43 "ITI33" 44 "ITI34" 109 "ITI35"  ///
            45 "ITI11" 46 "ITI12" 47 "ITI13" 48 "ITI14" 49 "ITI16" 50 "ITI17" 51 "ITI18" 52 "ITI19" 53 "ITI1A" 100 "ITI15" ///
            54 "ITI21" 55 "ITI22"  ///
            56 "ITI41" 57 "ITI42" 58 "ITI43" 59 "ITI44" 60 "ITI45" ///
            61 "ITF31" 62 "ITF32" 63 "ITF33" 64 "ITF34" 65 "ITF35"  ///
            66 "ITF11" 67 "ITF12" 68 "ITF13" 69 "ITF14" ///
            70 "ITF22" 94 "ITF21" ///
            71 "ITF46" 72 "ITF47" 73 "ITF43" 74 "ITF44" 75 "ITF45" 110 "ITF48" ///
            76 "ITF51" 77 "ITF52" ///
            78 "ITF61" 79 "ITF63" 80 "ITF65" 101 "ITF62" 102 "ITF64" ///
            81 "ITG11" 82 "ITG12" 83 "ITG13" 84 "ITG14" 85 "ITG15" 86 "ITG16" 87 "ITG17" 88 "ITG18" 89 "ITG19" ///
            90 "ITG2D" 91 "ITG2E" 92 "ITG2F" 95 "ITG2G" 111 "ITG2H"

  label values `gnuts3num' `labnuts3'
  decode `gnuts3num', gen(`gnuts3')
  label var `gnuts3' "NUTS3 `nuts'"
  qui count if `gnuts3'==""
  local m1=r(N)
  qui count if `nv'==.
  local m2=r(N)
  if `m1'!=`m2' {
    di in red "Alcune provincie sono prive di calssificazione NUTS3"
    fre `nv' if `gnuts3'=="" & `nv'!=.
  }
  drop `gnuts3num'
  }


if "`gnuts2'" != "" {
  tempname labnuts2
  tempvar gnuts2num
  clonevar `gnuts2num' = `tmpregio'
  qui replace `gnuts2num'=41 if `nv' == 21
  qui replace `gnuts2num'=42 if `nv' == 22
  **non cambia nelle varie versioni NUTS

  if `nuts'<=2006 label define `labnuts2' 1 "ITC1" 2 "ITC2" 3 "ITC4"  41 "ITH1" 42 "ITH2" 5 "ITH3" 6 "ITH4" 7 "ITC3" 8 "ITH5"   ///
                            9 "ITE1" 10 "ITE2" 11 "ITE3" 12 "ITE4" 13 "ITF1" 14 "ITF2" 15 "ITF3" 16 "ITF4" 17 "ITF5" 18 "ITF6" ///
                           19 "ITG1" 20 "ITG2"
  else label define `labnuts2' 1 "ITC1" 2 "ITC2" 3 "ITC4"  41 "ITH1" 42 "ITH2" 5 "ITH3" 6 "ITH4" 7 "ITC3" 8 "ITH5"   ///
                            9 "ITI1" 10 "ITI2" 11 "ITI3" 12 "ITI4" 13 "ITF1" 14 "ITF2" 15 "ITF3" 16 "ITF4" 17 "ITF5" 18 "ITF6" ///
                           19 "ITG1" 20 "ITG2"

  label values `gnuts2num' `labnuts2'
  decode `gnuts2num', gen(`gnuts2')
  label var `gnuts2' "NUTS2 `nuts'"
  drop `gnuts2num'
  }



if "`gnuts1'" != "" {
  tempvar gnuts1num
  **non cambia nelle varie versioni NUTS
  if `nuts'<=2006  qui recode `tmpregio' (1 2 3 7 = 1 "ITC" ) (4 5 6 8 = 2 "ITH") (9 10 11 12 = 3 "ITE") (13 14 15 16 17 18 = 4 "ITF") (19 20 = 5 "ITG"), gen(`gnuts1num') label(`gnuts1')
  else qui recode `tmpregio' (1 2 3 7 = 1 "ITC" ) (4 5 6 8 = 2 "ITH") (9 10 11 12 = 3 "ITI") (13 14 15 16 17 18 = 4 "ITF") (19 20 = 5 "ITG"), gen(`gnuts1num') label(`gnuts1')
  decode `gnuts1num', gen(`gnuts1')
  label var `gnuts1' "NUTS1 `nuts'"
  drop `gnuts1num'
  }

}


if "`gitter'" != "" {
  tempname labitter
  tempvar itternum
  qui gen `itternum' = `nv'
  **molto simile a NUTS 2003/2006
  label define `labitter' 1 "ITC11" 2 "ITC12" 3 "ITC15" 4 "ITC16" 5 "ITC17" 6 "ITC18" 96 "ITC13" 103 "ITC14" ///
                          7 "ITC20" ///
                          8 "ITC31" 9 "ITC32" 10 "ITC33" 11 "ITC34" ///
                          12 "ITC41" 13 "ITC42" 14 "ITC44" 15 "ITC45" 16 "ITC46" 17 "ITC47" 18 "ITC48" 19 "ITC4A" 20 "ITC4B" 97 "ITC43" 98 "ITC49" 108 "IT108"  ///
                          21 "ITD10" 22 "ITD20" ///
                          23 "ITD31" 24 "ITD32" 25 "ITD33" 26 "ITD34" 27 "ITD35" 28 "ITD36" 29 "ITD37"  ///
                          30 "ITD42" 31 "ITD43" 32 "ITD44" 93 "ITD41"  ///
                          33 "ITD51" 34 "ITD52" 35 "ITD53" 36 "ITD54" 37 "ITD55" 38 "ITD56" 39 "ITD57" 40 "ITD58" 99 "ITD59" ///
                          45 "ITE11" 46 "ITE12" 47 "ITE13" 48 "ITE14" 49 "ITE16" 50 "ITE17" 51 "ITE18" 52 "ITE19" 53 "ITE1A" 100 "ITE15" ///
                          54 "ITE21" 55 "ITE22" ///
                          41 "ITE31" 42 "ITE32" 43 "ITE33" 44 "ITE34" 109 "IT109" ///
                          56 "ITE41" 57 "ITE42" 58 "ITE43" 59 "ITE44" 60 "ITE45" ///
                          66 "ITF11" 67 "ITF12" 68 "ITF13" 69 "ITF14" ///
                          70 "ITF22" 94 "ITF21" ///
                          61 "ITF31" 62 "ITF32" 63 "ITF33" 64 "ITF34" 65 "ITF35" ///
                          71 "ITF41" 72 "ITF42" 73 "ITF43" 74 "ITF44" 75 "ITF45" 110 "IT110" ///
                          76 "ITF51" 77 "ITF52" ///
                          78 "ITF61" 79 "ITF63" 80 "ITF65" 101 "ITF62" 102 "ITF64" ///
                          81 "ITG11" 82 "ITG12" 83 "ITG13" 84 "ITG14" 85 "ITG15" 86 "ITG16" 87 "ITG17" 88 "ITG18" 89 "ITG19" ///
                          90 "ITG25" 91 "ITG26" 92 "ITG27" 95 "ITG28" 104 "ITG29" 111 "IT111" /*mancano nuove prov sarde*/
  /***************
  105 "Ogliastra"
  106 "Medio Campidano"
  107 "Carbonia-Iglesias"
  112 "Sassari"
  113 "Gallura Nord-Est Sardegna"
  114 "Nuoro"
  115 "Oristano"
  116 "Ogliastra"
  117 "Medio Campidano"
  119 "Sulcis Iglesiente"
  ****************/

  label values `itternum' `labitter'
  decode `itternum', gen(`gitter')
  label var `gitter' "ITTER Istat code"
  qui count if `gitter'==""
  local m1=r(N)
  qui count if `nv'==.
  local m2=r(N)
  if `m1'!=`m2' {
    di in red "Alcune provincie sono prive di classificazione ITTER"
    fre `nv' if `gitter'=="" & `nv'!=.
  }
  drop `itternum'
}


if "`gtarga'" != "" {
  tempname labtarga
  tempvar targanum
  qui gen `targanum' = `nv'
  label define `labtarga' 1 "TO" 2 "VC" 3 "NO" 4 "CN" 5 "AT" 6 "AL" 96 "BI" 103 "VB" ///
                          7 "AO" ///
                          8 "IM" 9 "SV" 10 "GE" 11 "SP" ///
                          12 "VA" 13 "CO" 14 "SO" 15 "MI" 16 "BG" 17 "BS" 18 "PV" 19 "CR" 20 "MN" 97 "LC" 98 "LO" 108 "MB" ///
                          21 "BZ" 22 "TN"  ///
                          23 "VR" 24 "VI" 25 "BL" 26 "TV" 27 "VE" 28 "PD" 29 "RO" ///
                          30 "UD" 31 "GO" 32 "TS"93 "PN" ///
                          33 "PC" 34 "PR" 35 "RE" 36 "MO" 37 "BO" 38 "FE" 39 "RA" 40 "FC" 99 "RN"  ///
                          45 "MS" 46 "LU" 47  "PT" 48 "FI" 49 "LI" 50 "PI" 51 "AR" 52 "SI" 53 "GR" 100 "PO" ///
                          54 "PG" 55 "TR"  ///
                          41 "PU" 42 "AN" 43 "MC" 44 "AP" 109 "FM"  ///
                          56 "VT" 57 "RI" 58 "RM" 59 "LT" 60 "FR"  ///
                          66 "AQ" 67 "TE" 68 "PE" 69 "CH"  ///
                          70 "CB" 94 "IS" ///
                          61 "CE" 62 "BN" 63 "NA"64 "AV" 65 "SA"  ///
                          71 "FG" 72 "BA" 73 "TA" 74 "BR" 75 "LE" 110 "BT"  ///
                          76 "PZ" 77 "MT"  ///
                          78 "CS" 79 "CZ" 80 "RC" 101 "KR" 102 "VV"  ///
                          81 "TP" 82 "PA" 83 "ME" 84 "AG" 85 "CL" 86 "EN" 87 "CT" 88 "RG" 89 "SR"  ///
                          90 "SS" 112 "SS" 91 "NU" 114 "NU" 92 "CA" 118 "CA" 95 "OR" 115 "OR" 104 "OT" 105 "OG" 116 "OG" 106 "VS" 117 "VS" 107 "CI" 111 "SU" ///
                          113 "" 119 ""

  label values `targanum' `labtarga'
  decode `targanum', gen(`gtarga')
  label var `gtarga' "Sigla automobilistica"
  qui count if `gtarga'==""
  local m1=r(N)
  qui count if `nv'==.
  local m2=r(N)
  if `m1'!=`m2' {
    di in red "Alcune provincie sono prive di sigla automobilistica"
    fre `nv' if `gtarga'=="" & `nv'!=.
  }
  drop `targanum'
}


qui save `TMPF', replace
restore

qui merge m:1 `_CLONE' using `TMPF', assert(1 3) keepusing(`nv' `gregio' `macro3' `macro5' `gnuts3' `gnuts2' `gnuts1' `gitter' `gtarga') nogenerate
sort `ID'
drop `ID'


qui include "`c(sysdir_plus)'d/dest_prov_lab.do"
label values `nv' `nv'

order `nv', after(`varlist')

if "`gregio'"!="" label values `gregio' `gregio'
if "`macro3'"!="" label values `macro3' `macro3'
if "`macro5'"!="" label values `macro5' `macro5'

/*** CHECKS  ***/
local ERROR = 0

**set trace on
qui levelsof `nv', local(test)
foreach k of local test {
**set trace on
   if "`:label (`nv') `k', strict'" == "" {
   local ERROR = 1
   **di as error "Ci sono delle categorie di `nv' senza label. Questa è la lista:"
   di _newline "Valore `k' senza label"
	 di "Associato a questi valori di `varlist'"
	 qui levelsof `varlist' if `nv'==`k', local(lista) clean
	 foreach i of local lista {
	 di "`i'" _newline
	 }

   }
}

drop `_CLONE'


if `ERROR'==1 & "`ignore'" == "" {
   di "Non sono stati passati tutti i check!"
   di "correggere i valori nella variabile `varlist', quindi riprovare. Oppure specifica l'opzione ignore"
   capture drop `nv'
   exit
}


if "`onlylab'" != "" {
   local labavar : variable label `varlist'
   qui drop `varlist'
   rename `nv' `varlist'
   label var `varlist' "`labavar'"
   label copy `nv' `varlist' , replace
   label values `varlist' `varlist'
}

else label var `nv' "Codice Istat provincia"
end
