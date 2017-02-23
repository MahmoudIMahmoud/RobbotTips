
#How to pass desired caps to open browser in robot?<br>
##Answer:<br>
Check the following fragment
```robot
Open Browser  ${START_URL}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
```
<b>where </b>
<span style="color:orange;">${DESIRED_CAPABILITIES} </span> is a dictionary variable defined as:<br>
```robot
*** variables ***
${DESIRED_CAPABILITIES}  browserName:chrome,platform:Windows 7
```
