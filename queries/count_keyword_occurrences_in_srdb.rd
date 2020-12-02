#title: Count keyword occurrences in SRDB
#tags: runes,srdb

PREFIX soch: <http://kulturarvsdata.se/ksamsok#>

SELECT ?keyword (COUNT(?keyword) AS ?c) WHERE {
  ?item soch:serviceName "srdb" .
  ?item soch:itemKeyWord ?keyword .
}

GROUP BY ?keyword
ORDER BY DESC(?c)
