function x = PLoSteta(Alfa, Beta, Gama,teta)
	a = Alfa*Beta;
	b = Gama;

	x = 1./(1+(a.*(exp(-1.*(teta-a)))));
end