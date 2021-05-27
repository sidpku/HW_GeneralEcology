clc
clear

%% 定义常量
GPP_opt = 1018; % 最理想状态下的GPP，由题目给定
TEMP_opt = 20;  % 最理想状态下的温度，由题目给定

%% 定义变量

GPP = zeros(301,6); 
NEP = zeros(301,6); 
RES = zeros(301,6); % 总呼吸 Rh+Ra
Csink = zeros(301,6);   % 碳库大小
TEMP = zeros(301,6);    % 温度

%% Pre calculation
for i=1:3
    MAT=5*i-5;
    Csink(1,[0,3]+i)=GPP_opt * 1.1814/(1+exp(0.2*(TEMP_opt-10-MAT)))./(1+exp(0.3*(-TEMP_opt-10+MAT)))*40./exp(MAT .*log(2)./10);
    GPP(1,[0,3]+i)= GetGPP(GPP_opt,MAT,TEMP_opt);
    RES(1,[0,3]+i)= GPP(1,[0,3]+i);
    NEP(1,:) = GPP(1,:)-RES(1,:);
end

TEMP(:,1) = [0, (0.05:0.05:15)]';
TEMP(:,2) = [5, (0.05:0.05:15)+5]';
TEMP(:,3) = [10, (0.05:0.05:15)+10]';
TEMP(:,4) = [0, (0.1:0.1:30)]';
TEMP(:,5) = [5, (0.1:0.1:30) + 5]';
TEMP(:,6) = [10, (0.1:0.1:30) + 10]';

%% Simulation

for year_index = 2:301
    GPP(year_index,:) = GetGPP(GPP_opt,TEMP(year_index,:),TEMP_opt);
    RES(year_index,:) = GetRES(Csink(year_index-1,:),TEMP(year_index,:));
    NEP(year_index,:) = GPP(year_index,:) - RES(year_index,:);
    Csink(year_index,:) = Csink(year_index-1,:) + NEP(year_index,:);

end

%% save data
filename = ['simulation_data_',datestr(now,'yymmdd_HHMM')];
save(filename);

%% function
function GPP=GetGPP(GPP_opt,MAT,TEMP_opt)
    GPP = GPP_opt .*  GetT_eps2(TEMP_opt,MAT);
end

function T_eps2=GetT_eps2(TEMP_opt,MAT)
    T_eps2 = 1.1814 ./(1+exp(0.2 .*(TEMP_opt-10-MAT)))./(1+exp(0.3 .*(-TEMP_opt-10+MAT)));
end

function RES = GetRES(Csink, MAT)
    K = 1/40;
    a = log(2)/10;
    RES = Csink .* K .* exp(a .* MAT );
end