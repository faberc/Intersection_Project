function gtreset(s)
% This function sets or resets a tic timer "gtimer" each time it is called.
% Inputs: s (speed)
% The timer is set as a global variable, and can be called with:
% ''gtreset()'' (starts or resets the timer)
% ''global gtimer'' (calls the global variable)
% ''toc(gtimer)'' (this calls the time)
% Call the function at the beginning of any 45 second loop.

% Tested and verified by Chuck on 3/1/2018
global speed
global gtimer

speed = s; % Set global variable speed to s.

gtimer = tic;
end