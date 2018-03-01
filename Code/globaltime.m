function gtreset()
% This function sets or resets a tic timer "gtimer" each time it is called.
% The timer is set as a global variable, and can be called with:
% global gtimer (always start any scripts referencing the time with this)
% toc(gtimer) (this calls the time)

global gtimer
gtimer = tic;
% while true
% if toc(gtimer) >= 45
%    gtimer = tic;
% end
% end
end