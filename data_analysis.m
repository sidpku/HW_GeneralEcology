% clc;clear;
% load('simulation-data.mat');
% 
% YEAR = 0:300;
% plot(YEAR, Csink(:,1), Year, homework02data.Csink11)

close;clc;
x = -10:0.1:50;
y = GetT_eps2(20,x);
plot(x,1018 * y);
hold
plot(20,1018*GetT_eps2(20,20),'.','markersize',10);
text(10,1000,sprintf('(%d,%d)',20,round(1018*GetT_eps2(20,20))))

[M,I] = max(y);
plot(x(I),1018*M,'.','markersize',10)
text(23,1050,sprintf('(%.2f,%d)',x(I),round(1018*M)));
xlabel('MAT');
ylabel('GPP');

function GPP=GetGPP(GPP_opt,MAT,TEMP_opt)
GPP = GPP_opt .*  GetT_eps2(TEMP_opt,MAT);
end

function T_eps2=GetT_eps2(TEMP_opt,MAT)
T_eps2 = 1.1814 ./(1+exp(0.2 .*(TEMP_opt-10-MAT)))./(1+exp(0.3 .*(-TEMP_opt-10+MAT)));
end

% x = 0:0.01:2;
% y = f(1,x);
% plot(x,100*y);
% xlabel("\delta MAT")
% ylabel("\delta C(%)")
% hold
% text(1.5,-20,"RES ¼õÐ¡");
% text(3.5,-10,"RES Ôö´ó");
% 
% function y = f(C,x)
% y = C.*(1./(2 .^(x./10))-1);
% end

% subplot(3,1,4)
% K = 1/40;
% MAT = 10;
% x = 0.001:0.001:1;
% y1 = log(1-1./(2.^(x ./10)));
% y2 = log(1/40) +MAT.*10./log(2)+x./10.*log(2);
% plot(x,y1,x,y2);
% legend("y1","y2");
% ylabel("y")
% title(sprintf("MAT=%d",MAT));
