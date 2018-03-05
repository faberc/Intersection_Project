function clickStates = crossWalkButtons()% This script reads the each button continuously for a button press% and outputs the activation state for North-South, and East-West crosswalkst = gtime();global readyEW % Declares readyEW and readyNS as global (should be initialized as zero elsewhere)global readyNS%clickStates = [digitalRead(0), digitalRead(1)]; [Error clickNS] = digitalRead(0);[Error clickEW] = digitalRead(1);clickStates = [clickNS, clickEW];if readyEW == 1 % If crosswalk already activated do not read during walking.  if (t <= 21) || (t > 42)    if clickEW == 0; % A digitalRead of 0 means it was clicked.        readyEW = 1;    end  endelse % Read all the time if cross walk not already activated.  if clickEW == 0; % A digitalRead of 0 means it was clicked.    readyEW = 1;  endif readyNS == 1 %If readyNS already true only read during assigned timesif (t > 12) && (t < 51)  if clickNS == 0;    readyNS = 1;  endendelse % If readyNS not true, read constantly.  if clickNS == 0;    readyNS = 1;  endendend % function end