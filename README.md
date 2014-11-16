<h1>Airport</h1>

<h2>Makers Academy week 3 - Friday challenge</h2>
Create airport and  plane classes. Planes can land & take off, but are subject to a weather randomiser (sunny or stormy). Built using TDD.

<h3>Technologies used:</h3>
- ruby

<h3>class - responsibility - collaborator:</h3>
<h4>airport class</h4>

*collaborator:* plane

*responsibility:*
can prevent a plane from landing if the airport is full
can prevent a plane from taking off in bad weather
can prevent plane from landing in bad weather

<h4>plane class</h4>
*collaborator:* airport

*responsibility:*
to be created with flying status
can land
can take off
(has flying status when in the air
sets its status to flying after it takes off)

<h4>weather module</h4>
*collaborator:* airport, plane

*responsibilities:*
to be mostly sunny but occasionally stormy
(done with the .sample method)
