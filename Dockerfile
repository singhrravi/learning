#My first dockerfile

FROM alpine

# Adding labels to docker file

LABEL name=myfirstimage version=v1.0
LABEL maintainer "Ravi"

# Adding env variavles with default values

ENV tempenv=ABC

#Adding ARG variables with default values

ARG myargument=default_value

RUN echo Argument value = $myargument \
current environment value = $tempenv

RUN apt-get update && apt-get install -y  wget
#RUN echo hello from dockerfile

# Creating a folder
RUN mkdir /myvol

# copying files and folder
copy file* /myvol/
ADD dir1 /myvol/folder1

# CMD Entry without an entry point
#CMD echo "This will be executed via CMD"

# Another format for CMD
#CMD ["/bin/bash","-c","echo hello"]

CMD ["ls -l"]

# Adding Entrypoint 
ENTRYPOINT ["bash","-c"]
