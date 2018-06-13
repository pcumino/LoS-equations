%% Constants:
Suburban.nLoS = .1; % in dB
Suburban.nNLoS = 21;

Urban.nLoS = 1;
Urban.nNLoS = 20;

DenseUrban.nLoS = 1.6;
DenseUrban.nNLoS = 23;

HighriseUrban.nLoS = 2.3;
HighriseUrban.nNLoS = 34;


Suburban.alfa = .1;
Suburban.beta = 750;
Suburban.gama = 8;

Urban.alfa = .3;
Urban.beta = 500;
Urban.gama = 15;

DenseUrban.alfa = .5;
DenseUrban.beta = 300;
DenseUrban.gama = 20;

HighriseUrban.alfa = .5;
HighriseUrban.beta = 300;
HighriseUrban.gama = 50;

%% Variables
teta = 0:1:90;
r = 200;
htx = 60;
hrx = 1;

figure('Units','normalized','Position',[0 0 1 1])

Alfa = Suburban.alfa;
Beta = Suburban.beta;
Gama = Suburban.gama;
res = cumprod(PLoS(htx, hrx, r, Alfa, Beta, Gama, teta));
plot(teta, 1-res, 'r-o', 'LineWidth', 3); grid on; hold on;

Alfa = Urban.alfa;
Beta = Urban.beta;
Gama = Urban.gama;
res = cumprod(PLoS(htx, hrx, r, Alfa, Beta, Gama, teta));
plot(teta, 1-res, 'g-o', 'LineWidth', 3); grid on; hold on;

Alfa = DenseUrban.alfa;
Beta = DenseUrban.beta;
Gama = DenseUrban.gama;
res = cumprod(PLoS(htx, hrx, r, Alfa, Beta, Gama, teta));
plot(teta, 1-res, 'b-o', 'LineWidth', 3); grid on; hold on;

Alfa = HighriseUrban.alfa;
Beta = HighriseUrban.beta;
Gama = HighriseUrban.gama;
res = cumprod(PLoS(htx, hrx, r, Alfa, Beta, Gama, teta));
plot(teta, 1-res, 'm-o', 'LineWidth', 3); grid on; hold on;

h = legend('Suburban','Urban','DenseUrban','HighriseUrban');
set (h, "fontsize", 20);

% Alfa = HighriseUrban.alfa;
% Beta = HighriseUrban.beta;
% Gama = HighriseUrban.gama;

% nLoS = HighriseUrban.nLoS;
% nNLoS = HighriseUrban.nNLoS;

% res = LoS(Alfa, Beta, Gama,teta, nLoS, nNLoS, r);

% figure('Units','normalized','Position',[0 0 1 1])
% plot(teta, res, 'm-o', 'LineWidth', 3); grid on; hold on;
pause();