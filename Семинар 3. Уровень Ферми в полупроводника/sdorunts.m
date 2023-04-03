% Расчет объемного положения уровня Ферми относительно середины запрещенной зоны в собственных 
% и примесных полупроводниках - кремнии и антимондиде индия при различных температурах.

%% Справочные данные

mz_eSi      = 1.08;     % эффективная масса электрона для Si
mz_pSi      = 0.56;     % эффективная масса дырки для Si
mz_eGe      = 0.56;     % эффективная масса электрона для Ge
mz_pGe      = 0.35;     % эффективная масса дырки для Ge
mz_eGaAs    = 0.068;    % эффективная масса электрона для GaAs
mz_pGaAs    = 0.45;     % эффективная масса дырки для GaAs
mz_eInSb    = 0.013;    % эффективная масса электрона для InSb
mz_pInSb    = 0.6;      % эффективная масса дырки для InSb

k       = 1.38*1e-23;   % постоянная Больцмана, Дж/К
T1      = 64;           % первая температура 77К
T2      = 300;          % вторая температура 300К
Ek      = 1.6*1e-19;    % коэффициент перевода энергии из Дж в эВ

%% Расчёт положения уровня Ферми в различных материалах при T1 & T2

FT1Si       = 3/4 * k * T1 * log(mz_eSi/mz_pSi) ./ Ek;
FT2Si       = 3/4 * k * T2 * log(mz_eSi/mz_pSi) ./ Ek;
FT1Ge       = 3/4 * k * T1 * log(mz_eGe/mz_pGe) ./ Ek;
FT2Ge       = 3/4 * k * T2 * log(mz_eGe/mz_pGe) ./ Ek;
FT1GaAs     = 3/4 * k * T1 * log(mz_eGaAs/mz_pGaAs) ./ Ek;
FT2GaAs     = 3/4 * k * T2 * log(mz_eGaAs/mz_pGaAs) ./ Ek;
FT1InSb     = 3/4 * k * T1 * log(mz_eInSb/mz_pInSb) ./ Ek;
FT2InSb     = 3/4 * k * T2 * log(mz_eInSb/mz_pInSb) ./ Ek;

%% Вывод положения уровня Ферми

fprintf("T1 = 64K\n");
fprintf("Параметр%20s%20s%20s%20s\n", 'Si', 'Ge', 'GaAs', 'InSb');
fprintf("phi, эВ %20e%20e%20e%20e\n\n", FT1Si, FT1Ge, FT1GaAs, FT1InSb);

fprintf("T1 = 300K\n");
fprintf("Параметр%20s%20s%20s%20s\n", 'Si', 'Ge', 'GaAs', 'InSb');
fprintf("phi, эВ %20e%20e%20e%20e\n\n", FT2Si, FT2Ge, FT2GaAs, FT2InSb);




