# Intersection_Project
Welcome! When working on this project, please refer to the Programming Timing diagram for notes about how the program should run, as well as the circuit diagram for the pinouts from the LabJack.

Please use the support functions such as analogWrite, digitalRead, etc. rather than the hardcode for LabJack reading and writing for ease of use. Please also continuously add documentation to your code so we don't have to do it later.


Support Functions
------------------
- [X] digitalWrite() @faberc
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
