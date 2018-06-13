function x = PLoS(htx, hrx, r, Alfa, Beta, Gama, teta)
	m = floor(r*sqrt(Alfa*Beta)-1);
	n = 0: m/(length(teta)) :(m-1);

	x = 1-(exp(-((htx-((htx-hrx).*(n+.5)/(m+1))).^2)/(2*(Gama.^2))));
end