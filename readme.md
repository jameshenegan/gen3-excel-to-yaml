The Dockerfile in this repo builds an image that can be used to create a YAML file for a single node for a Gen3 Data Dictionary, using a file called `nodes_schema_dcf.xlsx` as a template.

For example, if you have made changes to the "study' node in the excel file, then you would use "study" as a parameter in your `docker run` command. (See section on running a container, below.)

# Building the image

Here is the command to build the image, tagging it as `x2y` (eXcel to Yaml)

```
docker build -t x2y .
```

# Running a container

The command I use to run the container on my Mac is a little different from the command I use to run the container on my PC.

Command on Mac:

```
docker run --rm -v $(pwd):/app -e node_name="study" x2y
```

Command on Windows:

```
docker run --rm -v /$(pwd):/app -e node_name="study" x2y
```

# Example node names

```
diagnosis
study
subject
```
