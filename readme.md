Create the Yaml File for a Single Node
Using a file called `nodes_schema_dcf.xlsx` as a template

```
docker build -t x2y .
docker run --rm -v $(pwd):/app -e node_name="diagnosis" x2y
```
