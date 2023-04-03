% Расчет собственной концентрации свободных носителей заряда в кремнии Si, германии
%Ge, арсениде галлия GaAs и антимониде индия InSb при различных температурах.

%% справочные данные

mz_eSi      = 1.08;     % эффективная масса электрона для Si
mz_pSi      = 0.56;     % эффективная масса дырки для Si
mz_eGe      = 0.56;     % эффективная масса электрона для Ge
mz_pGe      = 0.35;     % эффективная масса дырки для Ge
mz_eGaAs    = 0.068;    % эффективная масса электрона для GaAs
mz_pGaAs    = 0.45;     % эффективная масса дырки для GaAs
mz_eInSb    = 0.013;    % эффективная масса электрона для InSb
mz_pInSb    = 0.6;      % эффективная масса дырки для InSb

k       = 1.38*1e-23;   % постоянная Больцмана, Дж/К
T1      = 77;           % первая температура 77К
T2      = 300;          % вторая температура 300К
h       = 6.63*1e-34;   % постоянная Планка Дж*с
m0      = 9.1*1e-31;    % масса покоя электрона, кг
Eg0Si   = 1.21;         % ширина запрещенной зоны Si при 0К, эВ
Eg0Ge   = 0.8;          % ширина запрещенной зоны Ge при 0К, эВ
Eg0GaAs = 1.56;         % ширина запрещенной зоны GaAs при 0К, эВ
Eg0InSb = 0.013;        % ширина запрещенной зоны InSb при 0К, эВ
aSi     = 2.4*1e-4;     % температурный коэффициент Si,эВ/К
aGe     = 5.8*1e-4;     % температурный коэффициент Ge,эВ/К
aGaAs   = 5.8*1e-4;     % температурный коэффициент GaAs,эВ/К
aInSb   = 5.1*1e-4;     % температурный коэффициент InSb,эВ/К
Ek      = 1.6*1e-19;    % коэффициент перевода Дж в эВ


%% ---------------------------- Si, T = 77K -------------------------------
% эффективная плотность состояний электронов в зоне проводимости Si при T=77K
NcSi77  = 2 * (2 * pi * mz_eSi * m0 * k * T1 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне Si при T=77K
NvSi77  = 2 * (2 * pi * mz_pSi * m0 * k * T1 / h^2)^(3/2);

% ширина запрещенной зоны Si при T=77К
EgSi77  = Eg0Si - aSi * T1;

% концентрация собственных носителей заряда Si при T=77K
nSi77   = sqrt(NcSi77 * NvSi77) * exp(-EgSi77 * Ek / (2 * k * T1));

%% --------------------------- InSb, T = 300K -----------------------------
% эффективная плотность состояний электронов в зоне проводимости Si при T=300K
NcSi300  = 2 * (2 * pi * mz_eSi * m0 * k * T2 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне Si при T=77K
NvSi300  = 2 * (2 * pi * mz_pSi * m0 * k * T2 / h^2)^(3/2);

% ширина запрещенной зоны Si при T=300К
EgSi300  = Eg0Si - aSi * T2;

% концентрация собственных носителей заряда Si при T=300K
nSi300   = sqrt(NcSi300 * NvSi77) * exp(-EgSi300 * Ek / (2 * k * T2));

%% ---------------------------- Ge, T = 77K -------------------------------
% эффективная плотность состояний электронов в зоне проводимости Ge при T=77K
NcGe77  = 2 * (2 * pi * mz_eGe * m0 * k * T1 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне Ge при T=77K
NvGe77  = 2 * (2 * pi * mz_pGe * m0 * k * T1 / h^2)^(3/2);

% ширина запрещенной зоны Ge при T=77К
EgGe77  = Eg0Ge - aGe * T1;

% концентрация собственных носителей заряда Ge при T=77K
nGe77   = sqrt(NcGe77 * NvGe77) * exp(-EgGe77 * Ek / (2 * k * T1));

%% --------------------------- Ge, T = 300K -------------------------------
% эффективная плотность состояний электронов в зоне проводимости Ge при T=300K
NcGe300  = 2 * (2 * pi * mz_eGe * m0 * k * T2 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне Ge при T=300K
NvGe300  = 2 * (2 * pi * mz_pGe * m0 * k * T2 / h^2)^(3/2);

% ширина запрещенной зоны Ge при T=77К
EgGe300  = Eg0Ge - aGe * T2;

% концентрация собственных носителей заряда Ge при T=77K
nGe300   = sqrt(NcGe77 * NvGe77) * exp(-EgGe77 * Ek / (2 * k * T2));

%% --------------------------- GaAs, T = 77K ------------------------------
% эффективная плотность состояний электронов в зоне проводимости GaAs при T=77K
NcGaAs77  = 2 * (2 * pi * mz_eGaAs * m0 * k * T1 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне GaAs при T=77K
NvGaAs77  = 2 * (2 * pi * mz_pGaAs * m0 * k * T1 / h^2)^(3/2);

% ширина запрещенной зоны GaAs при T=77К
EgGaAs77  = Eg0GaAs - aGaAs * T1;

% концентрация собственных носителей заряда GaAs при T=77K
nGaAs77   = sqrt(NcGaAs77 * NvGaAs77) * exp(-EgGaAs77 * Ek / (2 * k * T1));

%% -------------------------- GaAs, T = 300K ------------------------------
% эффективная плотность состояний электронов в зоне проводимости GaAs при T=300K
NcGaAs300  = 2 * (2 * pi * mz_eGaAs * m0 * k * T2 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне GaAs при T=300K
NvGaAs300  = 2 * (2 * pi * mz_pGaAs * m0 * k * T2 / h^2)^(3/2);

% ширина запрещенной зоны GaAs при T=300К
EgGaAs300  = Eg0GaAs - aGaAs * T2;

% концентрация собственных носителей заряда GaAs при T=300K
nGaAs300   = sqrt(NcGaAs300 * NvGaAs300) * exp(-EgGaAs300 * Ek / (2 * k * T2));

%% --------------------------- InSb, T = 77K ------------------------------
% эффективная плотность состояний электронов в зоне проводимости InSb при T=77K
NcInSb77  = 2 * (2 * pi * mz_eInSb * m0 * k * T1 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне InSb при T=77K
NvInSb77  = 2 * (2 * pi * mz_pInSb * m0 * k * T1 / h^2)^(3/2);

% ширина запрещенной зоны InSb при T=77К
EgInSb77  = Eg0InSb - aInSb * T1;

% концентрация собственных носителей заряда InSb при T=77K
nInSb77   = sqrt(NcInSb77 * NvInSb77) * exp(-EgInSb77 * Ek / (2 * k * T1));

%% -------------------------- InSb, T = 300K ------------------------------
% эффективная плотность состояний электронов в зоне проводимости InSb при T=300K
NcInSb300  = 2 * (2 * pi * mz_eInSb * m0 * k * T2 / h^2)^(3/2);

% эффективная плотность состояний дырок в валентной зоне InSb при T=300K
NvInSb300  = 2 * (2 * pi * mz_pInSb * m0 * k * T2 / h^2)^(3/2);

% ширина запрещенной зоны InSb при T=300К
EgInSb300  = Eg0InSb - aInSb * T2;

% концентрация собственных носителей заряда InSb при T=300K
nInSb300   = sqrt(NcInSb300 * NvInSb300) * exp(-EgInSb300 * Ek / (2 * k * T2));

%% Вывод концентраций для T = 77K & T = 300 K

fprintf('T=77K\n');
fprintf('Параметр%20s%20s%20s%20s\n', 'Si', 'Ge', 'GaAs', 'InSb');
fprintf('Nc      %20e%20e%20e%20e\n', NcSi77, NcGe77, NcGaAs77,NcInSb77);
fprintf('Nv      %20e%20e%20e%20e\n', NvSi77, NvGe77, NvGaAs77,NvInSb77);
fprintf('n       %20e%20e%20e%20e\n\n', nSi77, nGe77, nGaAs77,nInSb77);

fprintf('T=300K\n');
fprintf('Параметр%20s%20s%20s%20s\n', 'Si', 'Ge', 'GaAs', 'InSb');
fprintf('Nc      %20e%20e%20e%20e\n', NcSi300, NcGe300, NcGaAs300,NcInSb300);
fprintf('Nv      %20e%20e%20e%20e\n', NvSi300, NvGe300, NvGaAs300,NvInSb300);
fprintf('n       %20e%20e%20e%20e\n\n', nSi300, nGe300, nGaAs300,nInSb300);

%% Нахождение концентрации в диапазоне температур
% Диапазон температур
t = 77:1:300;

% Концентрация Si в диапазоне температур 77...300
NcSi77_300  = 2 * (2 * pi * mz_eSi * m0 * k .* t / h^2) .^ (3/2);
NvSi77_300  = 2 * (2 * pi * mz_pSi * m0 * k .* t / h^2) .^ (3/2);
EgSi77_300  = Eg0Si - aSi .* t;
nSi77_300   = sqrt(NcSi77_300 .* NvSi77_300) * exp(-EgSi77_300 .* Ek / (2 * k .* t));

% Концентрация Ge в диапазоне температур 77...300
NcGe77_300  = 2 * (2 * pi * mz_eGe * m0 * k .* t / h^2) .^ (3/2);
NvGe77_300  = 2 * (2 * pi * mz_pGe * m0 * k .* t / h^2) .^ (3/2);
EgGe77_300  = Eg0Ge - aGe .* t;
nGe77_300   = sqrt(NcGe77_300 .* NvGe77_300) * exp(-EgGe77_300 .* Ek / (2 * k .* t));

% Концентрация GaAs в диапазоне температур 77...300
NcGaAs77_300    = 2 * (2 * pi * mz_eGaAs * m0 * k .* t / h^2) .^ (3/2);
NvGaAs77_300    = 2 * (2 * pi * mz_pGaAs * m0 * k .* t / h^2) .^ (3/2);
EgGaAs77_300    = Eg0GaAs - aGaAs .* t;
nGaAs77_300     = sqrt(NcGaAs77_300 .* NvGaAs77_300) * exp(-EgGaAs77_300 .* Ek / (2 * k .* t));

% Концентрация InSb в диапазоне температур 77...300
NcInSb77_300    = 2 * (2 * pi * mz_eInSb * m0 * k .* t / h^2) .^ (3/2);
NvInSb77_300    = 2 * (2 * pi * mz_pInSb * m0 * k .* t / h^2) .^ (3/2);
EgInSb77_300    = Eg0InSb - aInSb .* t;
nInSb77_300     = sqrt(NcInSb77_300 .* NvInSb77_300) * exp(-EgInSb77_300 .* Ek / (2 * k .* t));

subplot(2, 2, 1), plot(t, nSi77_300);
xlabel('Температура, град К');
ylabel('Концентрация, Si');
subplot(2, 2, 2), plot(t, nGe77_300);
xlabel('Температура, град К');
ylabel('Концентрация, Ge');
subplot(2, 2, 3), plot(t, nGaAs77_300);
xlabel('Температура, град К');
ylabel('Концентрация, GaAs');
subplot(2, 2, 4), plot(t, nInSb77_300);
xlabel('Температура, град К');
ylabel('Концентрация, InSb');