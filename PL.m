function res = PL(fc, d, Alfa, Beta, Gama, teta)
	c = 299792458;
	res = 20*log(c) + PLoSteta(Alfa, Beta, Gama,teta);
end