#title: Get the Wikidata URI for The battle of Poltava by SOCH URI
#tags: wikidata,federated

PREFIX soch: <http://kulturarvsdata.se/ksamsok#>
PREFIX wdt: <http://www.wikidata.org/prop/direct/>

SELECT ?wd_item WHERE {
  BIND(<http://kulturarvsdata.se/LSH/events/1630> AS ?poltava)
  BIND(REPLACE(STR(?poltava), 'http://kulturarvsdata.se/', '') AS ?wd_soch)
  
  SERVICE <https://query.wikidata.org/bigdata/namespace/wdq/sparql> {
    ?wd_item wdt:P1260 ?wd_soch .
  }
}
