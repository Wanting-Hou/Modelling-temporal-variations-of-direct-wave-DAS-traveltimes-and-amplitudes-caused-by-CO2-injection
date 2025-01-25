clear;

load('data\CRC3_oases.mat');
Z = md';
Vp = vp(1,:)'*1000;
Vs = vs(1,:)'*1000;
Rho = rho(1,:)'*1000;

figure(1);
subplot(1,2,1)
plot(Vp,Z,'k','LineWidth',1.5);hold on;
plot(Vs,Z,'b','LineWidth',1.5);hold on;
ylabel('Depth (m)'); xlabel('Velocity (m/s)'); 
set(gca,'YDir','reverse');
subplot(1,2,2)
plot(Rho,Z,'k','LineWidth',1.5);hold on;
ylabel('Depth (m)'); xlabel('Density (g/m^3)');
set(gca,'YDir','reverse');


