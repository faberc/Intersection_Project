function [nsCW, ewCW] = crossWalkLights()% Has subfunction crossWalkButtons()% This script activates the cross walk sequence and takes inputs from the% crossWalkButtons script.% Call global time.t = gtime();% Timing sequenceif t < 12% NS crosswalk ondigitalWrite(2:5,[1 0 0 1]);elseif t < 21% blink the NS stop light  if mod(round(t),2) == 0    digitalWrite(2:5,[1 0 1 0]);  else    digitalWrite(2:5,[1 0 0 0]);  endelseif t < 42% EW crosswalk ondigitalWrite(2:5,[0,1,1,0]);elseif t < 51% blink the EW crosswalk  if mod(round(t),2) == 0    digitalWrite(2:5,[1 0 1 0]);  else    digitalWrite(2:5,[0 0 1 0]);  endend