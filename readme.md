portal compose
==============

Dit is een compose file om portal code te deployen. Deze bestaat uit
- nginx
- php-fpm
- composer

composer draait eenmalig om de portal code van de juiste vendor libraries te voorzien

Go.sh
-----

Draai dit script op de swarm, het doet het volgende
- draait init.sh
- draait prepare.sh
- start container op

Init.sh
-------

Dit script zet de source code klaar in "src" die gebruikt wordt in de container

Prepare.sh
----------

Dit script maakt de omgeving in orde, denk aan volumes etc

Notes
-----
1) zowel prepare als init moeten uitgevoerd worden, voordat de container start

2) in init.sh zet je alleen code klaar. Als je iets wilt installeren in de container, dan maak je daarvoor een nieuw image. Het draaien van composer is een uitzondering omdat dat libraries aan de code toevoegd, het voert geen installs op de container uit
