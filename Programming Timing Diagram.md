**Intersection Program Timing Diagram**

<table>
  <tr>
    <td></td>
    <td>Time in Seconds</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Function Name</td>
    <td>0</td>
    <td>3</td>
    <td>6</td>
    <td>9</td>
    <td>12</td>
    <td>15</td>
    <td>18</td>
    <td>21</td>
    <td>24</td>
    <td>27</td>
    <td>30</td>
    <td>33</td>
    <td>36</td>
    <td>39</td>
    <td>42</td>
    <td>45</td>
  </tr>
  <tr>
    <td>trafficLights</td>
    <td>a</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>b</td>
    <td></td>
    <td>c</td>
    <td>d</td>
    <td>e</td>
    <td></td>
    <td></td>
    <td></td>
    <td>f</td>
    <td></td>
    <td>g</td>
  </tr>
  <tr>
    <td>crossWalkLights</td>
    <td>a</td>
    <td></td>
    <td></td>
    <td></td>
    <td>b</td>
    <td></td>
    <td></td>
    <td>c</td>
    <td></td>
    <td></td>
    <td></td>
    <td>d</td>
    <td></td>
    <td></td>
    <td></td>
    <td>e</td>
  </tr>
  <tr>
    <td>turnLane</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>a</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>b</td>
    <td></td>
  </tr>
  <tr>
    <td>crossWalkButtons</td>
    <td>a/b</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>ambientLight</td>
    <td>a/b</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>


<table>
  <tr>
    <td>Function Name:</td>
    <td>trafficLights</td>
  </tr>
  <tr>
    <td>a</td>
    <td>D goes green (if TurnLaneC == 1, C goes green); B and E are red.</td>
  </tr>
  <tr>
    <td>b</td>
    <td>D goes yellow. (If TurnLaneC == 1, C goes yellow);</td>
  </tr>
  <tr>
    <td>c</td>
    <td>D goes red. (If TurnLaneC == 1, C goes red) → [Set TurnLaneC = 0]; B goes green. (If TurnLaneA == 1, A goes green; else, E goes green)</td>
  </tr>
  <tr>
    <td>d</td>
    <td>If TurnLaneA == 1, A goes yellow.</td>
  </tr>
  <tr>
    <td>e</td>
    <td>If TurnLaneA == 1, A goes red and E goes green. [Set TurnLaneA = 0];</td>
  </tr>
  <tr>
    <td>f</td>
    <td>B and E go yellow.</td>
  </tr>
  <tr>
    <td>g</td>
    <td>B and E go red; D goes green (if TurnLaneC == 1, C goes green)</td>
  </tr>
</table>


<table>
  <tr>
    <td>Function Name:</td>
    <td>crossWalkLights</td>
  </tr>
  <tr>
    <td>a</td>
    <td>Set buttonsEW = 0; Set EW crosswalks to solid Stop. If buttonsNS == 1, set NS crosswalks to ‘Walk’ (1-6, 4-5). </td>
  </tr>
  <tr>
    <td>b</td>
    <td>If buttonsNS == 1, Blink NS Stop Indicator.</td>
  </tr>
  <tr>
    <td>c</td>
    <td>Set buttonsNS = 0; Set NS crosswalks to solid Stop. If buttonsEW == 1, set EW crosswalk indicators to walk (2-3)</td>
  </tr>
  <tr>
    <td>d</td>
    <td>If buttonsEW == 1, blink EW Stop Indicator.</td>
  </tr>
  <tr>
    <td>e</td>
    <td>Set buttonsEW = 0; Set EW crosswalks to solid Stop; If buttonsNS == 1, set NS crosswalks to ‘Walk’ (1-6, 4-5). </td>
  </tr>
</table>


<table>
  <tr>
    <td>Function Name:</td>
    <td>turnLane</td>
  </tr>
  <tr>
    <td>a</td>
    <td>If HallEffectSensor1 is triggered [digitalRead(ioPin) == 0], set TurnLaneA = 1;</td>
  </tr>
  <tr>
    <td>b</td>
    <td>If HallEffectSensor2 is triggered [digitalRead(ioPin) == 0], set TurnLaneC = 1;</td>
  </tr>
</table>


<table>
  <tr>
    <td>Function Name:</td>
    <td>crossWalkButtons</td>
  </tr>
  <tr>
    <td>a</td>
    <td>while true: if buttons 1, 6, 4, 5 pressed [digitalRead(ioPin) == 0], set buttonsNS = 1;</td>
  </tr>
  <tr>
    <td>b</td>
    <td>while true: if buttons 2, 3 pressed [digitalRead(ioPin) == 0], set buttonsEW = 1;</td>
  </tr>
</table>


<table>
  <tr>
    <td>Function Name:</td>
    <td>ambientLight</td>
  </tr>
  <tr>
    <td>a</td>
    <td>while true: if light level below LowerLightThreshold, set night = 1 [analogRead(ioPin) < LowerLightThreshold];</td>
  </tr>
  <tr>
    <td>b</td>
    <td>while true: if light level above UpperLightThreshold, set night = 0 [analogRead(ioPin) > UpperLightThreshold];</td>
  </tr>
</table>


