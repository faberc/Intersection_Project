%Verified that HE sensors work. They read low activated with magnet.
initializeAll();
while true
pause(1);
[Error State1] = digitalRead(11);
[Error State2] = digitalRead(12);
disp([State1, State2])
end