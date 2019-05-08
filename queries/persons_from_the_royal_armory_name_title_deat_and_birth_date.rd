#title: Persons(name, title, birth and death date) from the Royal Armorys persons database
#tags: lsh,persons

PREFIX soch: <http://kulturarvsdata.se/ksamsok#>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT DISTINCT ?short_id ?label ?title ?fromTime ?toTime WHERE {
  ?entity a soch:Entity .
  ?entity soch:itemType <http://kulturarvsdata.se/resurser/EntityType#person> .

  ?entity soch:itemLabel ?label .
  OPTIONAL { ?entity foaf:title ?title } .
  OPTIONAL {
    ?entity soch:context ?context .
    ?context soch:contextSuperType <http://kulturarvsdata.se/resurser/ContextSuperType#create> .
    ?context soch:fromTime ?fromTime .
  }
  OPTIONAL {
    ?entity soch:context ?context .
    ?context soch:contextSuperType <http://kulturarvsdata.se/resurser/ContextSuperType#cease> .
    ?context soch:toTime ?toTime .
  }

  BIND(REPLACE(STR(?entity), 'http://kulturarvsdata.se/', '') AS ?short_id) .
}
