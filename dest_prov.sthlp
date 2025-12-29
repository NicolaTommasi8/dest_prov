{smcl}
{* *! version 3.0 dec2025}{...}
{cmd:help dest_prov}
{hline}

{title:Description}

{p2colset 5 15 17 2}{...}
{p2col :{cmd:dest_prov}} converte i nomi delle provincie italiane nel codice numerico ISTAT.{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 14 2}
{opt dest_prov} {it:varname} {ifin} [{cmd:,} {opt time(var)} {opt gen:erate(newvar)} {opt onlylab} {opt ignore} {opt tl(str)} {opt itter}
{opt gregio(newvar)} {opt macro3(newvar)} {opt macro5(newvar)} {opt gnuts3(newvar)}
{opt gnuts2(newvar)} {opt gnuts1(newvar)} {opt nuts(int)} {opt gitter(newvar)} {opt gtarga(newvar)} ]


{pstd}
dove {it:varname} è la variabile stringa con i nomi delle provicie. I nomi possono essere in forma estesa (es. Verona), come sigla
automobilistica (es. VR), come codice NUTS3 (ITH31) o come codice Istat itter (ITD31).

{synoptset 20 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{p2coldent : {opt time(var)}} nome della variabile che indica l'anno a cui fa riferimento il nome della provincia. Questa opzione si è resa necessaria
a causa della riforma delle province sarde del 2025. Per esempio a Cagliari viene assegnato il codice 92 fino al 2024, il codice 118 a partire dal 2025.
Se non specificata il comando assume che l'anno di riferimento sia quello attuale.{p_end}

{p2coldent : {opt gen:erate(newvar)}} crea la variabile numerica {cmd:newvar} con il codice ISTAT delle provincie italiane. Se non
specificato verrà creata di default la variabile {cmd:cod_prov}.{p_end}

{p2coldent : {opt onlylab}} questa opzione serve se la variabile è già numerica e l'operazione da compiere è solo il label dei suoi valori.{p_end}

{p2coldent : {opt ignore}} {opt dest_prov} esegue due controlli. Il primo controlla che tutte le stringhe di {it: varname} siano riconosciute e quindi convertite in codice numerico,
il secondo controllo verifica che tutti i codici numerici generati abbiano una label. Se uno dei due controlli non è verificato, l'esecuzione del comando
viene interrota e nessuna conversione viene eseguita. Specificando l'opzione {opt ignore}, {opt dest_prov} viene eseguito anche se uno dei controlli
non viene superato.{p_end}

{p2coldent : {opt tl(str)}} specifica se le labels dei valori della variabile creata {cmd:varname}  saranno in forma estesa (es. Verona) o come sigla (es. VR).
Il valore di default è {cmd:full}.{p_end}

{p2coldent : {opt itter}} indica che la variabile stringa {cmd:varname} contiene il codice territoriale Istat della provincia {p_end}

{p2coldent : {opt gregio(newvar)}} genera una variabile con i codici ISTAT delle regioni.{p_end}

{p2coldent : {opt macro3(newvar)}} genera una variabile con l'appartenenza a 3 macro regioni (Nord, Centro, Sud e Isole).{p_end}

{p2coldent : {opt macro5(newvar)}} genera una variabile con l'appartenenza a 5 macro regioni (Nord-Ovest, Nord-Est, Centro, Sud, Isole).{p_end}

{p2coldent : {opt gnuts3(newvar)}} genera una variabile (stringa) con i codici NUTS3.{p_end}

{p2coldent : {opt gnuts2(newvar)}} genera una variabile (stringa) con i codici NUTS2.{p_end}

{p2coldent : {opt gnuts1(newvar)}} genera una variabile (stringa) con i codici NUTS1.{p_end}

{p2coldent : {opt nuts(int)}} Specifica la revisione NUTS, i possibili valori sono  2003, 2006, 2010, 2013, 2016, 2021 e 2024. Se non specificato si fa riferimento alle versione 2024.{p_end}

{p2coldent : {opt gitter(newvar)}} genera una variabile (stringa) con i codici itter di Istat.{p_end}

{p2coldent : {opt gtarga(newvar)}} genera una variabile (stringa) con le sigle automobilistiche delle province.{p_end}
{synoptline}
{p2colreset}{...}


{title:Examples}

{pstd}
codifica la variabile stringa {cmd:provincia} nella variabile numerica {cmd:prov_num}:{p_end}
{phang2}{cmd:. dest_prov provincia, gen(prov_num)}
{p_end}

{pstd}
come la precedente, ma la label dei valori della variabile {cmd:prov_num} sono in forma di sigla:{p_end}
{phang2}{cmd:. dest_prov provincia, gen(prov_num) tl(sigla)}


{title:Saved results}
{pstd}
Nessun risultato salvato



{title:References}
{phang}
ISTAT #1 {browse "https://www.istat.it/classificazione/codici-dei-comuni-delle-province-e-delle-regioni/": Codici delle unità amministrative}
ISTAT #2 {browse "https://situas.istat.it/web/#/home": SITUAS}


{title:Author}
{pstd}Nicola Tommasi{p_end}
{pstd}Centro Interdipartimentale di Documentazione Economica (C.I.D.E.){p_end}
{pstd}University of Verona, Italy{p_end}
{pstd}nicola.tommasi@univr.it{p_end}
{pstd} {p_end}




{title:Also see}
{p 7 14 2}Help:  {help dest_com}{p_end}
