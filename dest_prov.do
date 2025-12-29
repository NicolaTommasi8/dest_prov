if "`itter'"=="" {
  replace `_NV' = 1    if strmatch(`_CLONE',"torino")  ///
                        | strmatch(`_CLONE',"to")      ///
                        | inlist(`_CLONE',"it111","itc11")

  replace `_NV' = 2    if strmatch(`_CLONE',"vercelli") ///
                        | strmatch(`_CLONE',"vc")  ///
                        | inlist(`_CLONE',"it112","itc12")

  replace `_NV' = 3    if strmatch(`_CLONE',"novara") ///
                        | strmatch(`_CLONE',"no") ///
                        | inlist(`_CLONE',"it115","itc15")

  replace `_NV' = 4    if strmatch(`_CLONE',"cuneo") ///
                        | strmatch(`_CLONE',"cn")  ///
                        | inlist(`_CLONE',"it116","itc16")

  replace `_NV' = 5    if strmatch(`_CLONE',"asti") ///
                        | strmatch(`_CLONE',"at")  ///
                        | inlist(`_CLONE',"it117","itc17")

  replace `_NV' = 6    if strmatch(`_CLONE',"alessandria")  ///
                        | strmatch(`_CLONE',"al")  ///
                        | inlist(`_CLONE',"it118","itc18")

  replace `_NV' = 96   if strmatch(`_CLONE',"biella") ///
                        | strmatch(`_CLONE',"bi") ///
                        | inlist(`_CLONE',"it113","itc13")

  replace `_NV' = 103  if strmatch(`_CLONE',"verbano*cusio*ossola") | strmatch(`_CLONE',"verbania") ///
                        | strmatch(`_CLONE',"vb") ///
                        | inlist(`_CLONE',"it114","itc14")

  replace `_NV' = 7    if strmatch(`_CLONE',"vall*aost*") | strmatch(`_CLONE',"aosta") ///
                        | strmatch(`_CLONE',"ao") ///
                        | inlist(`_CLONE',"it120","itc20")

  replace `_NV' = 12   if strmatch(`_CLONE',"varese") ///
                        | strmatch(`_CLONE',"va") ///
                        | inlist(`_CLONE',"it201","itc41")

  replace `_NV' = 13   if strmatch(`_CLONE',"como")  ///
                        | strmatch(`_CLONE',"co")  ///
                        | inlist(`_CLONE',"it202","itc42")

  replace `_NV' = 14   if strmatch(`_CLONE',"sondrio")  ///
                       | strmatch(`_CLONE',"so")  ///
                       | inlist(`_CLONE',"it204","itc44")

  replace `_NV' = 15   if strmatch(`_CLONE',"milano")  ///
                        | strmatch(`_CLONE',"mi")  ///
                        | inlist(`_CLONE',"it205","itc45","itc4c")

  replace `_NV' = 16   if strmatch(`_CLONE',"bergamo") ///
                        | strmatch(`_CLONE',"bg") ///
                        | inlist(`_CLONE',"it206","itc46")

  replace `_NV' = 17   if strmatch(`_CLONE',"brescia")  ///
                        | strmatch(`_CLONE',"bs")  ///
                        | inlist(`_CLONE',"it207","itc47")

  replace `_NV' = 18   if strmatch(`_CLONE',"pavia")  ///
                        | strmatch(`_CLONE',"pv")  ///
                        | inlist(`_CLONE',"it208","itc48")

  replace `_NV' = 19   if strmatch(`_CLONE',"cremona")  ///
                        | strmatch(`_CLONE',"cr")  ///
                        | inlist(`_CLONE',"it20a","itc4a")

  replace `_NV' = 20   if strmatch(`_CLONE',"mantova")  ///
                        | strmatch(`_CLONE',"mn")  ///
                        | inlist(`_CLONE',"it20b","itc4b")

  replace `_NV' = 97   if strmatch(`_CLONE',"lecco")  ///
                        | strmatch(`_CLONE',"lc")  ///
                        | inlist(`_CLONE',"it203","itc43")

  replace `_NV' = 98   if strmatch(`_CLONE',"lodi")  ///
                        | strmatch(`_CLONE',"lo")  ///
                        | inlist(`_CLONE',"it209","itc49")

  replace `_NV' = 108  if strmatch(`_CLONE',"monza*") ///
                        | strmatch(`_CLONE',"mb") ///
                        | inlist(`_CLONE',"itc4d")

  replace `_NV' = 21   if strmatch(`_CLONE',"bolzano*") | strmatch(`_CLONE',"*bozen*")  ///
                        | strmatch(`_CLONE',"bz")  ///
                        | inlist(`_CLONE',"it311","itd10","ith10")

  replace `_NV' = 22   if strmatch(`_CLONE',"trento") | strmatch(`_CLONE',"*prov*auton*trento")  ///
                        | strmatch(`_CLONE',"tn")  ///
                        | inlist(`_CLONE',"it312","itd20","ith20")

  replace `_NV' = 23   if strmatch(`_CLONE',"verona") ///
                        | strmatch(`_CLONE',"vr") ///
                        | inlist(`_CLONE',"it321","itd31","ith31")

  replace `_NV' = 24   if strmatch(`_CLONE',"vicenza") ///
                        | strmatch(`_CLONE',"vi") ///
                        | inlist(`_CLONE',"it322","itd32","ith32")

  replace `_NV' = 25   if strmatch(`_CLONE',"belluno") ///
                        | strmatch(`_CLONE',"bl") ///
                        | inlist(`_CLONE',"it323","itd33","ith33")

  replace `_NV' = 26   if strmatch(`_CLONE',"treviso")  ///
                        | strmatch(`_CLONE',"tv")  ///
                        | inlist(`_CLONE',"it324","itd34","ith34")

  replace `_NV' = 27   if strmatch(`_CLONE',"venezia") ///
                        | strmatch(`_CLONE',"ve") ///
                        | inlist(`_CLONE',"it325","itd35","ith35")

  replace `_NV' = 28   if strmatch(`_CLONE',"padova")  ///
                        | strmatch(`_CLONE',"pd")  ///
                        | inlist(`_CLONE',"it326","itd36","ith36")

  replace `_NV' = 29   if strmatch(`_CLONE',"rovigo")  ///
                        | strmatch(`_CLONE',"ro")  ///
                        | inlist(`_CLONE',"it327","itd37","ith37")

  replace `_NV' = 30   if strmatch(`_CLONE',"udine")  ///
                        | strmatch(`_CLONE',"ud")  ///
                        | inlist(`_CLONE',"it332","itd42","ith42")

  replace `_NV' = 31   if strmatch(`_CLONE',"gorizia") ///
                        | strmatch(`_CLONE',"go") ///
                        | inlist(`_CLONE',"it333","itd43","ith43")

  replace `_NV' = 32   if strmatch(`_CLONE',"trieste")  ///
                        | strmatch(`_CLONE',"ts")  ///
                        | inlist(`_CLONE',"it334","itd44","ith44")

  replace `_NV' = 93   if strmatch(`_CLONE',"pordenone")  ///
                        | strmatch(`_CLONE',"pn")  ///
                        | inlist(`_CLONE',"it331","itd41","ith41")

  replace `_NV' = 8    if strmatch(`_CLONE',"imperia")  ///
                        | strmatch(`_CLONE',"im")  ///
                        | inlist(`_CLONE',"it131","itc31")

  replace `_NV' = 9    if strmatch(`_CLONE',"savona")  ///
                        | strmatch(`_CLONE',"sv")  ///
                        | inlist(`_CLONE',"it132","itc32")

  replace `_NV' = 10   if strmatch(`_CLONE',"genova") ///
                        | strmatch(`_CLONE',"ge") ///
                        | inlist(`_CLONE',"it133","itc33")

  replace `_NV' = 11   if strmatch(`_CLONE',"la*spezia") ///
                        | strmatch(`_CLONE',"sp") ///
                        | inlist(`_CLONE',"it134","itc34")

  replace `_NV' = 33   if strmatch(`_CLONE',"piacenza")  ///
                        | strmatch(`_CLONE',"pc")  ///
                        | inlist(`_CLONE',"it401","itd51","ith51")

  replace `_NV' = 34   if strmatch(`_CLONE',"parma")  ///
                        | strmatch(`_CLONE',"pr")  ///
                        | inlist(`_CLONE',"it402","itd52","ith52")

  replace `_NV' = 35   if strmatch(`_CLONE',"reggio*emilia")  ///
                        | strmatch(`_CLONE',"re")  ///
                        | inlist(`_CLONE',"it403","itd53","ith53")

  replace `_NV' = 36   if strmatch(`_CLONE',"modena")  ///
                        | strmatch(`_CLONE',"mo")  ///
                        | inlist(`_CLONE',"it404","itd54","ith54")

  replace `_NV' = 37   if strmatch(`_CLONE',"bologna")  ///
                        | strmatch(`_CLONE',"bo")  ///
                        | inlist(`_CLONE',"it405","itd55","ith55")

  replace `_NV' = 38   if strmatch(`_CLONE',"ferrara") ///
                        | strmatch(`_CLONE',"fe") ///
                        | inlist(`_CLONE',"it406","itd56","ith56")

  replace `_NV' = 39   if strmatch(`_CLONE',"ravenna")  ///
                        | strmatch(`_CLONE',"ra")  ///
                        | inlist(`_CLONE',"it407","itd57","ith57")

  replace `_NV' = 40   if strmatch(`_CLONE',"forl*cesena") | strmatch(`_CLONE',"forl*")  ///
                        | strmatch(`_CLONE',"fc") | strmatch(`_CLONE',"fo")  ///
                        | inlist(`_CLONE',"it408","itd58","ith58")

  replace `_NV' = 99   if strmatch(`_CLONE',"rimini")  ///
                        | strmatch(`_CLONE',"rn")  ///
                        | inlist(`_CLONE',"it409","itd59","ith59")

  replace `_NV' = 45   if strmatch(`_CLONE',"massa*carrara") ///
                        | strmatch(`_CLONE',"ms") ///
                        | inlist(`_CLONE',"it511","ite11","iti11")

  replace `_NV' = 46   if strmatch(`_CLONE',"lucca")  ///
                        | strmatch(`_CLONE',"lu")  ///
                        | inlist(`_CLONE',"it512","ite12","iti12")

  replace `_NV' = 47   if strmatch(`_CLONE',"pistoia")  ///
                        | strmatch(`_CLONE',"pt")  ///
                        | inlist(`_CLONE',"it513","ite13","iti13")

  replace `_NV' = 48   if strmatch(`_CLONE',"firenze")  ///
                        | strmatch(`_CLONE',"fi")  ///
                        | inlist(`_CLONE',"it514","ite14","iti14")

  replace `_NV' = 49   if strmatch(`_CLONE',"livorno")  ///
                        | strmatch(`_CLONE',"li")  ///
                        | inlist(`_CLONE',"it516","ite16","iti16")

  replace `_NV' = 50   if strmatch(`_CLONE',"pisa") ///
                        | strmatch(`_CLONE',"pi") ///
                        | inlist(`_CLONE',"it517","ite17","iti17")

  replace `_NV' = 51   if strmatch(`_CLONE',"arezzo")  ///
                        | strmatch(`_CLONE',"ar")  ///
                        | inlist(`_CLONE',"it518","ite18","iti18")

  replace `_NV' = 52   if strmatch(`_CLONE',"siena")  ///
                        | strmatch(`_CLONE',"si")  ///
                        | inlist(`_CLONE',"it519","ite19","iti19")

  replace `_NV' = 53   if strmatch(`_CLONE',"grosseto")  ///
                        | strmatch(`_CLONE',"gr")  ///
                        | inlist(`_CLONE',"it51a","ite1a","iti1a")

  replace `_NV' = 100  if strmatch(`_CLONE',"prato")  ///
                        | strmatch(`_CLONE',"po")  ///
                        | inlist(`_CLONE',"it515","ite15","iti15")

  replace `_NV' = 54   if strmatch(`_CLONE',"perugia")  ///
                        | strmatch(`_CLONE',"pg")  ///
                        | inlist(`_CLONE',"it521","ite21","iti21")

  replace `_NV' = 55   if strmatch(`_CLONE',"terni")  ///
                        | strmatch(`_CLONE',"tr")  ///
                        | inlist(`_CLONE',"it522","ite22","iti22")

  replace `_NV' = 41   if strmatch(`_CLONE',"pesaro*urbino") ///
                        | strmatch(`_CLONE',"pu")  ///
                        | inlist(`_CLONE',"it531","ite31","iti31")

  replace `_NV' = 42   if strmatch(`_CLONE',"ancona")  ///
                        | strmatch(`_CLONE',"an")  ///
                        | inlist(`_CLONE',"it532","ite32","iti32")

  replace `_NV' = 43   if strmatch(`_CLONE',"macerata")  ///
                        | strmatch(`_CLONE',"mc")  ///
                        | inlist(`_CLONE',"it533","ite33","iti33")

  replace `_NV' = 44   if strmatch(`_CLONE',"ascoli*")  ///
                        | strmatch(`_CLONE',"ap")  ///
                        | inlist(`_CLONE',"it534","ite34","iti34")

  replace `_NV' = 109  if strmatch(`_CLONE',"fermo")  ///
                        | strmatch(`_CLONE',"fm")  ///
                        | inlist(`_CLONE',"iti35")

  replace `_NV' = 56   if strmatch(`_CLONE',"viterbo")  ///
                        | strmatch(`_CLONE',"vt")  ///
                        | inlist(`_CLONE',"it601","ite41","iti41")

  replace `_NV' = 57   if strmatch(`_CLONE',"rieti")  ///
                        | strmatch(`_CLONE',"ri")  ///
                        | inlist(`_CLONE',"it602","ite42","iti42")

  replace `_NV' = 58   if strmatch(`_CLONE',"roma") | strmatch(`_CLONE',"roma capitale")  ///
                        | strmatch(`_CLONE',"rm")  ///
                        | inlist(`_CLONE',"it603","ite43","iti43")

  replace `_NV' = 59   if strmatch(`_CLONE',"latina")  ///
                        | strmatch(`_CLONE',"lt")  ///
                        | inlist(`_CLONE',"it604","ite44","iti44")

  replace `_NV' = 60   if strmatch(`_CLONE',"frosinone")  ///
                        | strmatch(`_CLONE',"fr")  ///
                        | inlist(`_CLONE',"it605","ite45","iti45")

  replace `_NV' = 66   if strmatch(`_CLONE',"l*aquila")  ///
                        | strmatch(`_CLONE',"aq")  ///
                        | inlist(`_CLONE',"it711","itf11")

  replace `_NV' = 67   if strmatch(`_CLONE',"teramo")  ///
                        | strmatch(`_CLONE',"te")  ///
                        | inlist(`_CLONE',"it712","itf12")

  replace `_NV' = 68   if strmatch(`_CLONE',"pescara")  ///
                        | strmatch(`_CLONE',"pe")  ///
                        | inlist(`_CLONE',"it713","itf13")

  replace `_NV' = 69   if strmatch(`_CLONE',"chieti")  ///
                        | strmatch(`_CLONE',"ch")  ///
                        | inlist(`_CLONE',"it714","itf14")

  replace `_NV' = 70   if strmatch(`_CLONE',"campobasso")  ///
                        | strmatch(`_CLONE',"cb")  ///
                        | inlist(`_CLONE',"it722","itf22")

  replace `_NV' = 94   if strmatch(`_CLONE',"isernia")  ///
                        | strmatch(`_CLONE',"is")  ///
                        | inlist(`_CLONE',"it721","itf21")

  replace `_NV' = 61   if strmatch(`_CLONE',"caserta")  ///
                        | strmatch(`_CLONE',"ce")  ///
                        | inlist(`_CLONE',"it801","itf31")

  replace `_NV' = 62   if strmatch(`_CLONE',"benevento")  ///
                        | strmatch(`_CLONE',"bn")  ///
                        | inlist(`_CLONE',"it802","itf32")

  replace `_NV' = 63   if strmatch(`_CLONE',"napoli")  ///
                        | strmatch(`_CLONE',"na")  ///
                        | inlist(`_CLONE',"it803","itf33")

  replace `_NV' = 64   if strmatch(`_CLONE',"avellino")  ///
                        | strmatch(`_CLONE',"av")  ///
                        | inlist(`_CLONE',"it804","itf34")

  replace `_NV' = 65   if strmatch(`_CLONE',"salerno")  ///
                        | strmatch(`_CLONE',"sa")  ///
                        | inlist(`_CLONE',"it805","itf35")

  replace `_NV' = 71   if strmatch(`_CLONE',"foggia")  ///
                        | strmatch(`_CLONE',"fg")  ///
                        | inlist(`_CLONE',"it911","itf41","itf46")

  replace `_NV' = 72   if strmatch(`_CLONE',"bari")  ///
                        | strmatch(`_CLONE',"ba")  ///
                        | inlist(`_CLONE',"it912","itf42","itf47")

  replace `_NV' = 73   if strmatch(`_CLONE',"taranto")  ///
                        | strmatch(`_CLONE',"ta")  ///
                        | inlist(`_CLONE',"it913","itf43")

  replace `_NV' = 74   if strmatch(`_CLONE',"brindisi")  ///
                        | strmatch(`_CLONE',"br")  ///
                        | inlist(`_CLONE',"it914","itf44")

  replace `_NV' = 75   if strmatch(`_CLONE',"lecce")  ///
                        | strmatch(`_CLONE',"le")  ///
                        | inlist(`_CLONE',"it915","itf45")

  replace `_NV' = 110  if strmatch(`_CLONE',"barletta*andria*trani")  ///
                        | strmatch(`_CLONE',"bt")  ///
                        | inlist(`_CLONE',"itf48")

  replace `_NV' = 76   if strmatch(`_CLONE',"potenza")  ///
                        | strmatch(`_CLONE',"pz")  ///
                        | inlist(`_CLONE',"it921","itf51")

  replace `_NV' = 77   if strmatch(`_CLONE',"matera")  ///
                        | strmatch(`_CLONE',"mt")  ///
                        | inlist(`_CLONE',"it922","itf52")

  replace `_NV' = 78   if strmatch(`_CLONE',"cosenza")  ///
                        | strmatch(`_CLONE',"cs")  ///
                        | inlist(`_CLONE',"it931","itf61")

  replace `_NV' = 79   if strmatch(`_CLONE',"catanzaro")  ///
                        | strmatch(`_CLONE',"cz")  ///
                        | inlist(`_CLONE',"it933","itf63")

  replace `_NV' = 80   if strmatch(`_CLONE',"reggio*calabria")  ///
                        | strmatch(`_CLONE',"rc")  ///
                        | inlist(`_CLONE',"it935","itf65")

  replace `_NV' = 101  if strmatch(`_CLONE',"crotone")  ///
                        | strmatch(`_CLONE',"kr")  ///
                        | inlist(`_CLONE',"it932","itf62")

  replace `_NV' = 102  if strmatch(`_CLONE',"vibo*")  ///
                        | strmatch(`_CLONE',"vv")  ///
                        | inlist(`_CLONE',"it934","itf64")

  replace `_NV' = 81   if strmatch(`_CLONE',"trapani")  ///
                        | strmatch(`_CLONE',"tp")  ///
                        | inlist(`_CLONE',"ita01","itg11")

  replace `_NV' = 82   if strmatch(`_CLONE',"palermo")  ///
                        | strmatch(`_CLONE',"pa")  ///
                        | inlist(`_CLONE',"ita02","itg12")

  replace `_NV' = 83   if strmatch(`_CLONE',"messina")  ///
                        | strmatch(`_CLONE',"me")  ///
                        | inlist(`_CLONE',"ita03","itg13")

  replace `_NV' = 84   if strmatch(`_CLONE',"agrigento")  ///
                        | strmatch(`_CLONE',"ag")  ///
                        | inlist(`_CLONE',"ita04","itg14")

  replace `_NV' = 85   if strmatch(`_CLONE',"caltanissetta")  ///
                        | strmatch(`_CLONE',"cl")  ///
                        | inlist(`_CLONE',"ita05","itg15")

  replace `_NV' = 86   if strmatch(`_CLONE',"enna")  ///
                        | strmatch(`_CLONE',"en")  ///
                        | inlist(`_CLONE',"ita06","itg16")

  replace `_NV' = 87   if strmatch(`_CLONE',"catania")  ///
                        | strmatch(`_CLONE',"ct")  ///
                        | inlist(`_CLONE',"ita07","itg17")

  replace `_NV' = 88   if strmatch(`_CLONE',"ragusa")  ///
                        | strmatch(`_CLONE',"rg")  ///
                        | inlist(`_CLONE',"ita08","itg18")

  replace `_NV' = 89   if strmatch(`_CLONE',"siracusa")  ///
                        | strmatch(`_CLONE',"sr")  ///
                        | inlist(`_CLONE',"ita09","itg19")

  replace `_NV' = 90   if (strmatch(`_CLONE',"sassari")  ///
                        | strmatch(`_CLONE',"ss")  ///
                        | inlist(`_CLONE',"itb01","itg21","itg25","itg2d")) & `TIME'<=2024

  replace `_NV' = 112  if (strmatch(`_CLONE',"sassari")  ///
                        | strmatch(`_CLONE',"ss")  ///
                        | inlist(`_CLONE',".....")) & `TIME'>=2025

  replace `_NV' = 91   if (strmatch(`_CLONE',"nuoro")  ///
                            | strmatch(`_CLONE',"nu")  ///
                            | inlist(`_CLONE',"itb02","itg22","itg26","itg2e") ) & `TIME'<=2024

  replace `_NV' = 114  if (strmatch(`_CLONE',"nuoro")  ///
                          | strmatch(`_CLONE',"nu")  ///
                          | inlist(`_CLONE',"itg2e")) & `TIME'>=2025

  replace `_NV' = 92   if (strmatch(`_CLONE',"cagliari")  ///
                        | strmatch(`_CLONE',"ca")  ///
                        | inlist(`_CLONE',"itb04","itg24","itg27","itg2f") ) & `TIME'<=2024

  replace `_NV' = 118   if (strmatch(`_CLONE',"cagliari")  ///
                        | strmatch(`_CLONE',"ca")  ///
                        | inlist(`_CLONE',"itg2f") ) & `TIME'>=2025

  replace `_NV' = 95   if (strmatch(`_CLONE',"oristano")  ///
                        | strmatch(`_CLONE',"or")  ///
                        | inlist(`_CLONE',"itb03","itg23","itg28","itg2g")) & `TIME'<=2024

  replace `_NV' = 115  if (strmatch(`_CLONE',"oristano")  ///
                        | strmatch(`_CLONE',"or")  ///
                        | inlist(`_CLONE',"itg2g")) & `TIME'>=2025

  replace `_NV' = 104  if strmatch(`_CLONE',"olbia*tempio")  ///
                        | strmatch(`_CLONE',"ot")  ///
                        | inlist(`_CLONE',"itg29")

  replace `_NV' = 105  if (strmatch(`_CLONE',"ogliastra")  ///
                        | strmatch(`_CLONE',"og")  ///
                        | inlist(`_CLONE',"itg2a")) & `TIME'<=2024

  replace `_NV' = 116  if (strmatch(`_CLONE',"ogliastra")  ///
                        | strmatch(`_CLONE',"og")  ///
                        | inlist(`_CLONE',".....")) & `TIME'>=2025

  replace `_NV' = 106  if (strmatch(`_CLONE',"medio*campidano")  ///
                        | strmatch(`_CLONE',"vs")  ///
                        | inlist(`_CLONE',"itg2b")) & `TIME'<=2024

  replace `_NV' = 117  if (strmatch(`_CLONE',"medio*campidano")  ///
                        | strmatch(`_CLONE',"vs")  ///
                        | inlist(`_CLONE',".....")) & `TIME'>=2025

  replace `_NV' = 107  if strmatch(`_CLONE',"carbonia*iglesias")  ///
                      | strmatch(`_CLONE',"ci")  ///
                      | inlist(`_CLONE',"itg2c")

  replace `_NV' = 111  if strmatch(`_CLONE',"sud sardegna")  ///
                        | strmatch(`_CLONE',"su")  ///
                        | inlist(`_CLONE',"itg2h")

  **replace `_NV' = 111  if strmatch(`_CLONE',"Carbonia")  /*| strmatch(`_CLONE',"su")*/  ///
                        | inlist(`_CLONE',"itg2h")

  replace `_NV' = 113  if strmatch(`_CLONE',"Gallura*Sardegna*") /*  | inlist(`_CLONE',"....") al momento non ha codice nuts*/

  replace `_NV' = 119  if strmatch(`_CLONE',"Sulcis*Iglesiente*") /*  | inlist(`_CLONE',"....") al momento non ha codice nuts*/

}

else {
replace `_NV'=1   if `_CLONE'=="ITC11" /*Torino*/
replace `_NV'=2   if `_CLONE'=="ITC12" /*Vercelli*/
replace `_NV'=3   if `_CLONE'=="ITC15" /*Novara*/
replace `_NV'=4   if `_CLONE'=="ITC16" /*Cuneo*/
replace `_NV'=5   if `_CLONE'=="ITC17" /*Asti*/
replace `_NV'=6   if `_CLONE'=="ITC18" /*Alessandria*/
replace `_NV'=96   if `_CLONE'=="ITC13" /*Biella*/
replace `_NV'=103   if `_CLONE'=="ITC14" /*Verbano-Cusio-Ossola*/
replace `_NV'=7   if `_CLONE'=="ITC20" /*Valle d'Aosta / Vallée d'Aoste*/
replace `_NV'=8   if `_CLONE'=="ITC31" /*Imperia*/
replace `_NV'=9   if `_CLONE'=="ITC32" /*Savona*/
replace `_NV'=10   if `_CLONE'=="ITC33" /*Genova*/
replace `_NV'=11   if `_CLONE'=="ITC34" /*La Spezia*/
replace `_NV'=12   if `_CLONE'=="ITC41" /*Varese*/
replace `_NV'=13   if `_CLONE'=="ITC42" /*Como*/
replace `_NV'=14   if `_CLONE'=="ITC44" /*Sondrio*/
replace `_NV'=15   if `_CLONE'=="ITC45" /*Milano*/
replace `_NV'=16   if `_CLONE'=="ITC46" /*Bergamo*/
replace `_NV'=17   if `_CLONE'=="ITC47" /*Brescia*/
replace `_NV'=18   if `_CLONE'=="ITC48" /*Pavia*/
replace `_NV'=19   if `_CLONE'=="ITC4A" /*Cremona*/
replace `_NV'=20   if `_CLONE'=="ITC4B" /*Mantova*/
replace `_NV'=97   if `_CLONE'=="ITC43" /*Lecco*/
replace `_NV'=98   if `_CLONE'=="ITC49" /*Lodi*/
replace `_NV'=108   if `_CLONE'=="IT108" /*Monza e della Brianza*/
replace `_NV'=21   if `_CLONE'=="ITD10" /*Bolzano / Bozen*/
replace `_NV'=22   if `_CLONE'=="ITD20" /*Trento*/
replace `_NV'=23   if `_CLONE'=="ITD31" /*Verona*/
replace `_NV'=24   if `_CLONE'=="ITD32" /*Vicenza*/
replace `_NV'=25   if `_CLONE'=="ITD33" /*Belluno*/
replace `_NV'=26   if `_CLONE'=="ITD34" /*Treviso*/
replace `_NV'=27   if `_CLONE'=="ITD35" /*Venezia*/
replace `_NV'=28   if `_CLONE'=="ITD36" /*Padova*/
replace `_NV'=29   if `_CLONE'=="ITD37" /*Rovigo*/
replace `_NV'=30   if `_CLONE'=="ITD42" /*Udine*/
replace `_NV'=31   if `_CLONE'=="ITD43" /*Gorizia*/
replace `_NV'=32   if `_CLONE'=="ITD44" /*Trieste*/
replace `_NV'=93   if `_CLONE'=="ITD41" /*Pordenone*/
replace `_NV'=33   if `_CLONE'=="ITD51" /*Piacenza*/
replace `_NV'=34   if `_CLONE'=="ITD52" /*Parma*/
replace `_NV'=35   if `_CLONE'=="ITD53" /*Reggio nell'Emilia*/
replace `_NV'=36   if `_CLONE'=="ITD54" /*Modena*/
replace `_NV'=37   if `_CLONE'=="ITD55" /*Bologna*/
replace `_NV'=38   if `_CLONE'=="ITD56" /*Ferrara*/
replace `_NV'=39   if `_CLONE'=="ITD57" /*Ravenna*/
replace `_NV'=40   if `_CLONE'=="ITD58" /*Forlì-Cesena*/
replace `_NV'=99   if `_CLONE'=="ITD59" /*Rimini*/
replace `_NV'=45   if `_CLONE'=="ITE11" /*Massa-Carrara*/
replace `_NV'=46   if `_CLONE'=="ITE12" /*Lucca*/
replace `_NV'=47   if `_CLONE'=="ITE13" /*Pistoia*/
replace `_NV'=48   if `_CLONE'=="ITE14" /*Firenze*/
replace `_NV'=49   if `_CLONE'=="ITE16" /*Livorno*/
replace `_NV'=50   if `_CLONE'=="ITE17" /*Pisa*/
replace `_NV'=51   if `_CLONE'=="ITE18" /*Arezzo*/
replace `_NV'=52   if `_CLONE'=="ITE19" /*Siena*/
replace `_NV'=53   if `_CLONE'=="ITE1A" /*Grosseto*/
replace `_NV'=100   if `_CLONE'=="ITE15" /*Prato*/
replace `_NV'=54   if `_CLONE'=="ITE21" /*Perugia*/
replace `_NV'=55   if `_CLONE'=="ITE22" /*Terni*/
replace `_NV'=41   if `_CLONE'=="ITE31" /*Pesaro e Urbino*/
replace `_NV'=42   if `_CLONE'=="ITE32" /*Ancona*/
replace `_NV'=43   if `_CLONE'=="ITE33" /*Macerata*/
replace `_NV'=44   if `_CLONE'=="ITE34" /*Ascoli Piceno*/
replace `_NV'=109   if `_CLONE'=="IT109" /*Fermo*/
replace `_NV'=56   if `_CLONE'=="ITE41" /*Viterbo*/
replace `_NV'=57   if `_CLONE'=="ITE42" /*Rieti*/
replace `_NV'=58   if `_CLONE'=="ITE43" /*Roma*/
replace `_NV'=59   if `_CLONE'=="ITE44" /*Latina*/
replace `_NV'=60   if `_CLONE'=="ITE45" /*Frosinone*/
replace `_NV'=66   if `_CLONE'=="ITF11" /*L'Aquila*/
replace `_NV'=67   if `_CLONE'=="ITF12" /*Teramo*/
replace `_NV'=68   if `_CLONE'=="ITF13" /*Pescara*/
replace `_NV'=69   if `_CLONE'=="ITF14" /*Chieti*/
replace `_NV'=70   if `_CLONE'=="ITF22" /*Campobasso*/
replace `_NV'=94   if `_CLONE'=="ITF21" /*Isernia*/
replace `_NV'=61   if `_CLONE'=="ITF31" /*Caserta*/
replace `_NV'=62   if `_CLONE'=="ITF32" /*Benevento*/
replace `_NV'=63   if `_CLONE'=="ITF33" /*Napoli*/
replace `_NV'=64   if `_CLONE'=="ITF34" /*Avellino*/
replace `_NV'=65   if `_CLONE'=="ITF35" /*Salerno*/
replace `_NV'=71   if `_CLONE'=="ITF41" /*Foggia*/
replace `_NV'=72   if `_CLONE'=="ITF42" /*Bari*/
replace `_NV'=73   if `_CLONE'=="ITF43" /*Taranto*/
replace `_NV'=74   if `_CLONE'=="ITF44" /*Brindisi*/
replace `_NV'=75   if `_CLONE'=="ITF45" /*Lecce*/
replace `_NV'=110   if `_CLONE'=="IT110" /*Barletta-Andria-Trani*/
replace `_NV'=76   if `_CLONE'=="ITF51" /*Potenza*/
replace `_NV'=77   if `_CLONE'=="ITF52" /*Matera*/
replace `_NV'=78   if `_CLONE'=="ITF61" /*Cosenza*/
replace `_NV'=79   if `_CLONE'=="ITF63" /*Catanzaro*/
replace `_NV'=80   if `_CLONE'=="ITF65" /*Reggio di Calabria*/
replace `_NV'=101   if `_CLONE'=="ITF62" /*Crotone*/
replace `_NV'=102   if `_CLONE'=="ITF64" /*Vibo Valentia*/
replace `_NV'=81   if `_CLONE'=="ITG11" /*Trapani*/
replace `_NV'=82   if `_CLONE'=="ITG12" /*Palermo*/
replace `_NV'=83   if `_CLONE'=="ITG13" /*Messina*/
replace `_NV'=84   if `_CLONE'=="ITG14" /*Agrigento*/
replace `_NV'=85   if `_CLONE'=="ITG15" /*Caltanissetta*/
replace `_NV'=86   if `_CLONE'=="ITG16" /*Enna*/
replace `_NV'=87   if `_CLONE'=="ITG17" /*Catania*/
replace `_NV'=88   if `_CLONE'=="ITG18" /*Ragusa*/
replace `_NV'=89   if `_CLONE'=="ITG19" /*Siracusa*/
replace `_NV'=90   if `_CLONE'=="ITG25" & `TIME'<=2024 /*Sassari*/
replace `_NV'=112  if `_CLONE'=="ITG25" & `TIME'>=2025 /*Sassari*/
replace `_NV'=91   if `_CLONE'=="ITG26" & `TIME'<=2024 /*Nuoro*/
replace `_NV'=114  if `_CLONE'=="ITG26" & `TIME'>=2025 /*Nuoro*/
replace `_NV'=92   if `_CLONE'=="ITG27" & `TIME'<=2024 /*Cagliari*/
replace `_NV'=118  if `_CLONE'=="ITG27" & `TIME'>=2025 /*Cagliari*/
replace `_NV'=95   if `_CLONE'=="ITG28" & `TIME'<=2024  /*Oristano*/
replace `_NV'=115  if `_CLONE'=="ITG28" & `TIME'>=2025  /*Oristano*/

replace `_NV'=111   if `_CLONE'=="IT111" /*Sud Sardegna*/

**replace `_NV'=113   if `_CLONE'=="IT???" /*Gallura Nord-Est Sardegna*/
**replace `_NV'=116   if `_CLONE'=="IT???" /*Ogliastra*/
**replace `_NV'=117   if `_CLONE'=="IT???" /*Medio Campidano*/
**replace `_NV'=119   if `_CLONE'=="IT???" /*Sulcis Iglesiente*/
}


/** da controllare codifica itter, manca 2025
[ITC11] Torino
[ITC12] Vercelli
[ITC15] Novara
[ITC16] Cuneo
[ITC17] Asti
[ITC18] Alessandria
[ITC13] Biella
[ITC14] Verbano-Cusio-Ossola
[ITC20] Valle d'Aosta / Vallée d'Aoste
[ITC31] Imperia
[ITC32] Savona
[ITC33] Genova
[ITC34] La Spezia
[ITC41] Varese
[ITC42] Como
[ITC44] Sondrio
[ITC45] Milano
[ITC46] Bergamo
[ITC47] Brescia
[ITC48] Pavia
[ITC4A] Cremona
[ITC4B] Mantova
[ITC43] Lecco
[ITC49] Lodi
[IT108] Monza e della Brianza
[ITD10] Bolzano / Bozen
[ITD20] Trento
[ITD31] Verona
[ITD32] Vicenza
[ITD33] Belluno
[ITD34] Treviso
[ITD35] Venezia
[ITD36] Padova
[ITD37] Rovigo
[ITD42] Udine
[ITD43] Gorizia
[ITD44] Trieste
[ITD41] Pordenone
[ITD51] Piacenza
[ITD52] Parma
[ITD53] Reggio nell'Emilia
[ITD54] Modena
[ITD55] Bologna
[ITD56] Ferrara
[ITD57] Ravenna
[ITD58] Forlì-Cesena
[ITD59] Rimini
[ITE11] Massa-Carrara
[ITE12] Lucca
[ITE13] Pistoia
[ITE14] Firenze
[ITE16] Livorno
[ITE17] Pisa
[ITE18] Arezzo
[ITE19] Siena
[ITE1A] Grosseto
[ITE15] Prato
[ITE21] Perugia
[ITE22] Terni
[ITE31] Pesaro e Urbino
[ITE32] Ancona
[ITE33] Macerata
[ITE34] Ascoli Piceno
[IT109] Fermo
[ITE41] Viterbo
[ITE42] Rieti
[ITE43] Roma
[ITE44] Latina
[ITE45] Frosinone
[ITF11] L'Aquila
[ITF12] Teramo
[ITF13] Pescara
[ITF14] Chieti
[ITF22] Campobasso
[ITF21] Isernia
[ITF31] Caserta
[ITF32] Benevento
[ITF33] Napoli
[ITF34] Avellino
[ITF35] Salerno
[ITF41] Foggia
[ITF42] Bari
[ITF43] Taranto
[ITF44] Brindisi
[ITF45] Lecce
[IT110] Barletta-Andria-Trani
[ITF51] Potenza
[ITF52] Matera
[ITF61] Cosenza
[ITF63] Catanzaro
[ITF65] Reggio di Calabria
[ITF62] Crotone
[ITF64] Vibo Valentia
[ITG11] Trapani
[ITG12] Palermo
[ITG13] Messina
[ITG14] Agrigento
[ITG15] Caltanissetta
[ITG16] Enna
[ITG17] Catania
[ITG18] Ragusa
[ITG19] Siracusa
[ITG25] Sassari
[ITG26] Nuoro
[ITG27] Cagliari
[ITG28] Oristano
[IT111] Sud Sardegna
******************************/