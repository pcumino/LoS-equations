fc = 2.5 * (10^9); % fc: carrier frequandy
d = 0:1:3000;

res = FSPL(fc, d);

plot(d, res);

pause();