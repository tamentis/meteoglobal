Concept & Ideas
===============

meteoglobal is:

 - a little device that allows users to record their local atmospheric
   conditions
 - a community website allowing users to share this data
 - a way to agglomerate and use all this data to have a clear representation
   of the current weather
 - a way to let users make their own forecast based from the community data
   and get ranks when their forecast proves itself accurate.

Datas
-----
 - using METAR system 

LCD
---
 - for people who don't have a computer in "their kitchen"
 - for meteoglobal boxes that are placed in the car.

GPS
---
The goal, here, is to be able to collect data the nearest to the people, share
it, because you want to know the weather conditions where you are (or will be)
and not several km away, at the "local" airport.
You may be allowed to enter the location you placed the device more or less 
accuretly :
 - only the city
 - the neighborhood
 - the address
 - the flat
 - the cardinal direction.
This information will be stored as GPS coordonates (xx.xxxxxx,yy.yyyyyy → 6 digits)
and, (height - above sea level : for example 1m, 15m, 56m...)  and cardinal
direction → 8 possibilities.

Displaying informations
-----------------------
From the datas stored, one can use them free of charge as long as it's not for
commercial purpose. When one ask for datas, he will be given an average for the 
 - sunshine
 - temperature
 - hygrometry
 - ...
This average will be calculate this way :
When you ask for datas in xx.xxxxxx, yy.yyyyyy  , the nearest (in space) datas stores
be averaged, with an attenuation, e.g. :
 - datas within 100m : 100%
 - datas between 100 and 500m : 95%
 - ...
 - datas more than 100 km : 5%
The user may be able to choose from how many stored datas the average will be made (25 max).

The same type of attenuation in the calcul of average will be used with the GPS location of
the device from a user :

 - only the city for location : 30%
 - ....
 - perfect GPS location && height && cardinal direction : 100%

Finally : the wind direction.... if device location is place upstream wind, "100%"
downstream wind : "30%".

Software
--------
 - The meteoglobal server will handle the data storage.
 - Users logged can set their preferences, and the server will prepare for them, every hours
the average that they want. 
 - It will send datas to the client who will do the average and display it.
 - These datas could also be share the P2P way, the server only telling which other users have
the information they need. It should be emphasized that the P2P way, you could have the exact
timing datas, otherwise, using meteoglobal server, datas may be a little "old" (59 min max).
