#title: Get Old West Norse transliterations from SRDB
#tags: srdb,runes

PREFIX soch: <http://kulturarvsdata.se/ksamsok#>

SELECT ?item ?inscription_text WHERE {
  ?item soch:serviceName "srdb" .
  ?item soch:itemInscription ?inscription .
  ?inscription soch:text ?inscription_text .

  FILTER(LANGMATCHES(LANG(?inscription_text), "FVN"))
}
