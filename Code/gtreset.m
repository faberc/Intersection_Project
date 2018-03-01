function gtreset()
% This function sets or resets a tic timer "gtimer" each time it is called.
% The timer is set as a global variable, and can be called with:
% ''gtreset()'' (starts or resets the timer)
% ''global gtimer'' (calls the global variable)
% ''toc(gtimer)'' (this calls the time)
% Call the function at the beginning of any 45 second loop.

global gtimer
gtimer = tic;
% while true
% if toc(gtimer) >= 45
%    gtimer = tic;
% end
% end
end