%% LoS: function description
function res = LoS(Alfa, Beta, Gama,teta, nLoS, nNLoS, raio)
	% MUST BE REFORMULATED
	a = Alfa.*Beta;
	b = Gama;
	fc = 60;
	c = 299792458;
 	
	A = nLoS - nNLoS;
	B = 20.*(log(4.*pi.*fc)./c);

	res = (A./(1+a.*(exp(-b.*(((180./pi).*teta)-a)))))+(20.*log(raio./(cos(teta))))+B;
end
