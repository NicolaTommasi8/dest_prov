{smcl}
{* *! version 1.0.0  08aug2015}{...}
{cmd:help dest_prov}
{hline}

{title:Description}

{p2colset 5 15 17 2}{...}
{p2col :{cmd:dest_prov}} converte i nomi delle provincie italiane nel codice numerico ISTAT.{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 14 2}
{opt dest_prov} {it:varname} {ifin} [{cmd:,} {opt gen:erate(varname)} {opt tl(full|sigla)} {opt ignore} {opt gregio(name)} {opt macro3(name)} {opt macro5(name)} {opt gnuts3(name)} {opt gnuts2(name)} {opt gnuts1(name)} ]


{pstd}
dove {it:varname} è la variabile stringa con i nomi delle provicie. I nomi possono essere in forma estesa (es. Verona) o come sigla (es. VR).

{synoptset 20 tabbed}{...}
{marker options}{...}
{synopthdr}
{synoptline}
{p2coldent : {opt gen:erate(varname)}} crea la variabile numerica {cmd:varname} con il codice ISTAT delle provincie italiane. Se non
specificato verrà creata di default la variabile {cmd:cod_prov}.{p_end}
{p2coldent : {opt tl(full|sigla)}} {cmd:varname} specifica se le labels dei valori della variabile creata saranno in forma estesa (es. Verona) o come sigla (es. VR).
Il valore di default è {cmd:full}.{p_end}
{p2coldent : {opt ignore}} {opt dest_prov} esegue due controlli. Il primo controlla che tutte le stringhe di {it: varname} siano riconosciute e quindi convertite in codice numerico,
il secondo controllo verifica che tutti i codici numerici generati abbiano una label. Se uno dei due controlli non è verificato, l'esecuzione del comando
viene interrota e nessuna conversione viene eseguita. Specificando l'opzione {opt ignore}, {opt dest_prov} viene eseguito anche se uno dei controlli
non viene superato.{p_end}
{p2coldent : {opt gregio(varname)}} genera una variabile con i codici ISTAT delle regioni.{p_end}
{p2coldent : {opt macro3(varname)}} genera una variabile con l'appartenenza a 3 macro regioni (Nord, Centro, Sud e Isole).{p_end}
{p2coldent : {opt macro5(varname)}} genera una variabile con l'appartenenza a 5 macro regioni (Nord-Ovest, Nord-Est, Centro, Sud, Isole).{p_end}
{p2coldent : {opt gnuts3(varname)}} genera una variabile (stringa) con i codici NUTS3 2010.{p_end}
{p2coldent : {opt gnuts2(varname)}} genera una variabile (stringa) con i codici NUTS2 2010.{p_end}
{p2coldent : {opt gnuts1(varname)}} genera una variabile (stringa) con i codici NUTS1 2010.{p_end}
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
ISTAT {browse "http://www.istat.it/it/archivio/6789": Pagina di riferimento}



{title:Author}
{pstd}Nicola Tommasi{p_end}
{pstd}Centro Interdipartimentale di Documentazione Economica (C.I.D.E.){p_end}
{pstd}University of Verona, Italy{p_end}
{pstd}nicola.tommasi@univr.it{p_end}
{pstd} {p_end}




{title:Also see}
{p 7 14 2}Help:  {help dest_com}{p_end}
