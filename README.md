# Intersection_Project
Welcome! When working on this project, please refer to the [Programming Timing diagram](https://github.com/faberc/Intersection_Project/blob/master/Documentation/Programming%20Timing%20Diagram.pdf) for notes about how the program should run, as well as the [circuit diagram](https://github.com/faberc/Intersection_Project/blob/master/Documentation/IntersectionWiringOverview.png) for the pinouts from the LabJack.

Please use the support functions such as analogWrite, digitalRead, etc. rather than the hardcode for LabJack reading and writing for ease of use. Please also continuously add documentation to your code so we don't have to do it later.

*NOTE*: Even if something is checked off, please review the code to see that it looks okay to you and to get a feel for what it does. Certain scripts will be dependent on other scripts, and double and triple checking is always better than never checking! :+1:

Other Helpful Links:
--------------------
- [LJ IO Pin Number Translation Table](https://github.com/faberc/Intersection_Project/blob/master/Documentation/LJ_Pin_Numbers.pdf)
- [Quick Intro to GitHub (Video)](https://youtu.be/EUvmCuPjHD4)
- [Markdown Cheatsheet] (https://github.com/faberc/Intersection_Project/blob/master/Documentation/markdown-cheatsheet-online.pdf)

Support Functions
------------------
- [X] digitalWrite()
- [X] digitalRead()
- [X] analogWrite()
- [X] analogRead()
- [ ] shiftOut()
- [X] initializeLJ()
- [ ] diagnostic()

Functions
------------------
- [ ] trafficLights()
  - [ ] turnLane()
- [ ] crossWalkLights()
  - [ ] crossWalkButtons()
- [ ] ambientLight()
- [ ] driver()

Variables
------------------
- speed
- t (toc timer)
- night
- turnLaneA
- turnLaneC
- buttonsEW
- buttonsNS

### Global Variables
- ljHandle
- LJ_ioGET_AIN
- LJ_ioPUT_DAC
- LJ_ioPUT_DIGITAL_BIT
- LJ_ioGET_DIGITAL_BIT

Constants
------------------
- Pin Assignment Constants
- LowerLightThreshold
- UpperLightThreshold

Inputs
------------------
- Hall Effect Sensor 1 & Hall Effect Senseor 2
- Photoresistor Voltage
- Buttons 1-6-4-5
- Buttons 2-3
