% This is an example of how to use gtreset()
% gtreset() function tested and verified by Chuck on 3/1/18
gtreset()
global gtimer
while toc(gtimer) < 10
    fprintf('The time is %i s.\n',round(toc(gtimer)))
    pause(1)
end
