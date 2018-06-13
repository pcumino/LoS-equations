%% FSPL: Standard Friis equation for Free Space Path Loss
function [res] = FSPL(fc,d)
	% fc: carrier frequency in Hz
	% d: distance between the drone and the receiving user
	c = 3.*(10.^8); % light speed in m/s

	res = 20.*log((4.*pi.*fc.*d)/c);
end