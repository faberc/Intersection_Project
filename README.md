# Intersection_Project
Welcome! When working on this project, please refer to the [Programming Timing diagram](https://docs.google.com/document/d/1o6afdJ77Zcd1yHTJt-up1C2sTuCTtpHGJqIndX7Ty9w/edit?usp=sharing) for notes about how the program should run, as well as the [circuit diagram](https://github.com/faberc/Intersection_Project/blob/master/Documentation/IntersectionWiringOverview.png) for the pinouts from the LabJack.

Please use the support functions such as analogWrite, digitalRead, etc. rather than the hardcode for LabJack reading and writing for ease of use. Please also continuously add documentation to your code so we don't have to do it later.

*NOTE*: Even if something is checked off, please review the code to see that it looks okay to you and to get a feel for what it does. Certain scripts will be dependent on other scripts, and double and triple checking is always better than never checking! :+1:

Other Helpful Links:
--------------------
- [LJ IO Pin Number Translation Table](https://github.com/faberc/Intersection_Project/blob/master/Documentation/LJ_Pin_Numbers.pdf)
- [Quick Intro to GitHub (Video)](https://youtu.be/EUvmCuPjHD4)
- [Markdown Cheatsheet](https://github.com/faberc/Intersection_Project/blob/master/Documentation/markdown-cheatsheet-online.pdf)

Support Functions
------------------
- [X] digitalWrite()  % Write digital state
- [X] digitalRead()   % Read digital state
- [X] analogWrite()   % Output analog voltage
- [X] analogRead()    % Read analog voltage
- [X] shiftOut()      % Shift out traffic light signals
- [X] initializeLJ()  % Initialize LabJack (configure analog-read pins)
- [ ] diagnostic()    % Function allowing us to test particular aspects of the board and produces command window outputs. Maybe make a GUI.
- [X] gtreset()       % Global timer start and reset
- [X] gtime()         % Outputs the global time multiplied by a defined speed.

Functions
------------------
- [X] trafficLights()  % Controls traffic light timing; has speed input
  - [ ] turnLane()          % Reads Hall-Effect Sensors and outputs states at certain times.
- [ ] crossWalkLights()     % Controls crosswalk indicator timing.
  - [ ] crossWalkButtons()  % Continuously reads from crosswalk buttons.
- [ ] ambientLight()        % Reads ambient light, and turns on street lamps at particular threshold.
- [ ] driver()              % Call all other functions.

Variables
------------------
- speed                   % defines the speed of the pattern. Multiply to gtimer toc time to increase speed. 
- t = toc(gtimer)\*speed  % the general expression for time in time-based functions.
- night                   % state that says if ambient light is dark or not
- turnLaneA
- turnLaneC
- buttonsEW
- buttonsNS

### Global Variables
- ljHandle              % The specific LabJack call handle
- LJ_ioGET_AIN
- LJ_ioPUT_DAC
- LJ_ioPUT_DIGITAL_BIT
- LJ_ioGET_DIGITAL_BIT
- gtimer                % A 'tic' timer. Call with toc(gtimer).

Constants
------------------
- Pin Assignment Constants  % see circuit diagram
- LowerLightThreshold       % related to ambientLight() function. Thresholds for bright or dark ambient light.
- UpperLightThreshold

Inputs
------------------
- Hall Effect Sensor 1 & Hall Effect Senseor 2
- Photoresistor Voltage
- Buttons 1-6-4-5
- Buttons 2-3
