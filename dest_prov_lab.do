
if "`tl'" == "full" {
  label define `nv' 1 "Torino", modify
  label define `nv' 2 "Vercelli", modify
  label define `nv' 3 "Novara", modify
  label define `nv' 4 "Cuneo", modify
  label define `nv' 5 "Asti", modify
  label define `nv' 6 "Alessandria", modify
  label define `nv' 7 "Aosta", modify
  label define `nv' 8 "Imperia", modify
  label define `nv' 9 "Savona", modify
  label define `nv' 10 "Genova", modify
  label define `nv' 11 "La Spezia", modify
  label define `nv' 12 "Varese", modify
  label define `nv' 13 "Como", modify
  label define `nv' 14 "Sondrio", modify
  label define `nv' 15 "Milano", modify
  label define `nv' 16 "Bergamo", modify
  label define `nv' 17 "Brescia", modify
  label define `nv' 18 "Pavia", modify
  label define `nv' 19 "Cremona", modify
  label define `nv' 20 "Mantova", modify
  label define `nv' 21 "Bolzano/Bozen", modify
  label define `nv' 22 "Trento", modify
  label define `nv' 23 "Verona", modify
  label define `nv' 24 "Vicenza", modify
  label define `nv' 25 "Belluno", modify
  label define `nv' 26 "Treviso", modify
  label define `nv' 27 "Venezia", modify
  label define `nv' 28 "Padova", modify
  label define `nv' 29 "Rovigo", modify
  label define `nv' 30 "Udine", modify
  label define `nv' 31 "Gorizia", modify
  label define `nv' 32 "Trieste", modify
  label define `nv' 33 "Piacenza", modify
  label define `nv' 34 "Parma", modify
  label define `nv' 35 "Reggio nell'Emilia", modify
  label define `nv' 36 "Modena", modify
  label define `nv' 37 "Bologna", modify
  label define `nv' 38 "Ferrara", modify
  label define `nv' 39 "Ravenna", modify
  label define `nv' 40 "Forlì-Cesena", modify
  label define `nv' 41 "Pesaro e Urbino", modify
  label define `nv' 42 "Ancona", modify
  label define `nv' 43 "Macerata", modify
  label define `nv' 44 "Ascoli Piceno", modify
  label define `nv' 45 "Massa-Carrara", modify
  label define `nv' 46 "Lucca", modify
  label define `nv' 47 "Pistoia", modify
  label define `nv' 48 "Firenze", modify
  label define `nv' 49 "Livorno", modify
  label define `nv' 50 "Pisa", modify
  label define `nv' 51 "Arezzo", modify
  label define `nv' 52 "Siena", modify
  label define `nv' 53 "Grosseto", modify
  label define `nv' 54 "Perugia", modify
  label define `nv' 55 "Terni", modify
  label define `nv' 56 "Viterbo", modify
  label define `nv' 57 "Rieti", modify
  label define `nv' 58 "Roma", modify
  label define `nv' 59 "Latina", modify
  label define `nv' 60 "Frosinone", modify
  label define `nv' 61 "Caserta", modify
  label define `nv' 62 "Benevento", modify
  label define `nv' 63 "Napoli", modify
  label define `nv' 64 "Avellino", modify
  label define `nv' 65 "Salerno", modify
  label define `nv' 66 "L'Aquila", modify
  label define `nv' 67 "Teramo", modify
  label define `nv' 68 "Pescara", modify
  label define `nv' 69 "Chieti", modify
  label define `nv' 70 "Campobasso", modify
  label define `nv' 71 "Foggia", modify
  label define `nv' 72 "Bari", modify
  label define `nv' 73 "Taranto", modify
  label define `nv' 74 "Brindisi", modify
  label define `nv' 75 "Lecce", modify
  label define `nv' 76 "Potenza", modify
  label define `nv' 77 "Matera", modify
  label define `nv' 78 "Cosenza", modify
  label define `nv' 79 "Catanzaro", modify
  label define `nv' 80 "Reggio di Calabria", modify
  label define `nv' 81 "Trapani", modify
  label define `nv' 82 "Palermo", modify
  label define `nv' 83 "Messina", modify
  label define `nv' 84 "Agrigento", modify
  label define `nv' 85 "Caltanissetta", modify
  label define `nv' 86 "Enna", modify
  label define `nv' 87 "Catania", modify
  label define `nv' 88 "Ragusa", modify
  label define `nv' 89 "Siracusa", modify
  label define `nv' 90 "Sassari", modify
  label define `nv' 91 "Nuoro", modify
  label define `nv' 92 "Cagliari", modify
  label define `nv' 93 "Pordenone", modify
  label define `nv' 94 "Isernia", modify
  label define `nv' 95 "Oristano", modify
  label define `nv' 96 "Biella", modify
  label define `nv' 97 "Lecco", modify
  label define `nv' 98 "Lodi", modify
  label define `nv' 99 "Rimini", modify
  label define `nv' 100 "Prato", modify
  label define `nv' 101 "Crotone", modify
  label define `nv' 102 "Vibo Valentia", modify
  label define `nv' 103 "Verbano-Cusio-Ossola", modify
  label define `nv' 104 "Olbia-Tempio", modify
  label define `nv' 105 "Ogliastra", modify
  label define `nv' 106 "Medio Campidano", modify
  label define `nv' 107 "Carbonia-Iglesias", modify
  label define `nv' 108 "Monza e della Brianza", modify
  label define `nv' 109 "Fermo", modify
  label define `nv' 110 "Barletta-Andria-Trani", modify
  label define `nv' 111 "Sud Saregna", modify
}

else if "`tl'" == "sigla" {
  label define `nv' 1          "TO", modify
  label define `nv' 2          "VC", modify
  label define `nv' 3          "NO", modify
  label define `nv' 4          "CN", modify
  label define `nv' 5          "AT", modify
  label define `nv' 6          "AL", modify
  label define `nv' 96         "BI", modify
  label define `nv' 103        "VB", modify
  label define `nv' 7          "AO", modify
  label define `nv' 12         "VA", modify
  label define `nv' 13         "CO", modify
  label define `nv' 14         "SO", modify
  label define `nv' 15         "MI", modify
  label define `nv' 16         "BG", modify
  label define `nv' 17         "BS", modify
  label define `nv' 18         "PV", modify
  label define `nv' 19         "CR", modify
  label define `nv' 20         "MN", modify
  label define `nv' 97         "LC", modify
  label define `nv' 98         "LO", modify
  label define `nv' 108        "MB", modify
  label define `nv' 21         "BZ", modify
  label define `nv' 22         "TN", modify
  label define `nv' 23         "VR", modify
  label define `nv' 24         "VI", modify
  label define `nv' 25         "BL", modify
  label define `nv' 26         "TV", modify
  label define `nv' 27         "VE", modify
  label define `nv' 28         "PD", modify
  label define `nv' 29         "RO", modify
  label define `nv' 30         "UD", modify
  label define `nv' 31         "GO", modify
  label define `nv' 32         "TS", modify
  label define `nv' 93         "PN", modify
  label define `nv' 8          "IM", modify
  label define `nv' 9          "SV", modify
  label define `nv' 10         "GE", modify
  label define `nv' 11         "SP", modify
  label define `nv' 33         "PC", modify
  label define `nv' 34         "PR", modify
  label define `nv' 35         "RE", modify
  label define `nv' 36         "MO", modify
  label define `nv' 37         "BO", modify
  label define `nv' 38         "FE", modify
  label define `nv' 39         "RA", modify
  label define `nv' 40         "FC", modify
  label define `nv' 99         "RN", modify
  label define `nv' 45         "MS", modify
  label define `nv' 46         "LU", modify
  label define `nv' 47         "PT", modify
  label define `nv' 48         "FI", modify
  label define `nv' 49         "LI", modify
  label define `nv' 50         "PI", modify
  label define `nv' 51         "AR", modify
  label define `nv' 52         "SI", modify
  label define `nv' 53         "GR", modify
  label define `nv' 100        "PO", modify
  label define `nv' 54         "PG", modify
  label define `nv' 55         "TR", modify
  label define `nv' 41         "PU", modify
  label define `nv' 42         "AN", modify
  label define `nv' 43         "MC", modify
  label define `nv' 44         "AP", modify
  label define `nv' 109        "FM", modify
  label define `nv' 56         "VT", modify
  label define `nv' 57         "RI", modify
  label define `nv' 58         "RM", modify
  label define `nv' 59         "LT", modify
  label define `nv' 60         "FR", modify
  label define `nv' 66         "AQ", modify
  label define `nv' 67         "TE", modify
  label define `nv' 68         "PE", modify
  label define `nv' 69         "CH", modify
  label define `nv' 70         "CB", modify
  label define `nv' 94         "IS", modify
  label define `nv' 61         "CE", modify
  label define `nv' 62         "BN", modify
  label define `nv' 63         "NA", modify
  label define `nv' 64         "AV", modify
  label define `nv' 65         "SA", modify
  label define `nv' 71         "FG", modify
  label define `nv' 72         "BA", modify
  label define `nv' 73         "TA", modify
  label define `nv' 74         "BR", modify
  label define `nv' 75         "LE", modify
  label define `nv' 110        "BT", modify
  label define `nv' 76         "PZ", modify
  label define `nv' 77         "MT", modify
  label define `nv' 78         "CS", modify
  label define `nv' 79         "CZ", modify
  label define `nv' 80         "RC", modify
  label define `nv' 101        "KR", modify
  label define `nv' 102        "VV", modify
  label define `nv' 81         "TP", modify
  label define `nv' 82         "PA", modify
  label define `nv' 83         "ME", modify
  label define `nv' 84         "AG", modify
  label define `nv' 85         "CL", modify
  label define `nv' 86         "EN", modify
  label define `nv' 87         "CT", modify
  label define `nv' 88         "RG", modify
  label define `nv' 89         "SR", modify
  label define `nv' 90         "SS", modify
  label define `nv' 91         "NU", modify
  label define `nv' 92         "CA", modify
  label define `nv' 95         "OR", modify
  label define `nv' 104        "OT", modify
  label define `nv' 105        "OG", modify
  label define `nv' 106        "VS", modify
  label define `nv' 107        "CI", modify
  label define `nv' 111        "SU", modify
}


