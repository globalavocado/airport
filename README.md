Friday challenge for week3:
create airport and  plane classes. planes can land & take off, but are subject to a weather randomiser (sunny or stormy). Build using TDD.

CRC:

*airport class*

collaborator: plane
responsibility:
can prevent a plane from landing if the airport is full
can prevent a plane from taking off in bad weather
can prevent plane from landing in bad weather

*plane class*

collaborator: airport

responsibility:
to be created with flying status
can land
can take off
(has flying status when in the air
sets its status to flying after it takes off)

*weather module*

collaborator: airport, plane

responsibilities:
to be mostly sunny but occasionally stormy
(done with the .sample method)
