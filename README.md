# SOCH SPARQL Query Library

This repository contains a collection of SPARQL queries made for Swedish Open Cultural Heritage/K-samsök. It comes with an basic API built for the SPARQL editor [Thor](https://github.com/Abbe98/thor).

## Adding your own query

Add a new file to the `queries` directory and format your file as show below. Both a title and tags are mandatory:

```sparql
#title: Get all References: Kungshögarna
#tags: monuments,fmis,references

PREFIX soch: <http://kulturarvsdata.se/ksamsok#>
PREFIX fmis: <http://kulturarvsdata.se/raa/fmi/>

SELECT ?refs WHERE {
  fmis:10028201230001 soch:itemDescription ?description_node .
  ?description_node soch:type "Referenser" .
  ?description_node soch:desc ?refs .
}
```

## Generating JSON

You can generate the API/JSON file by running the following from root.

```bash
python generate_json.py
```
