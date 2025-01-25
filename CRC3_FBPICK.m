clc;clear all;close all;

load('data\Time_del.mat');load('data\Amp_rel.mat');load('data\Dept.mat');

OFFS = [100,400,400];
SOVs = {'SOV3','SOV2','SOV9'};
SOVnum = [3 2 9]; 

z_lim = [1510 1590];

amp_lims = [-0.1 0.25];
time_lims = [-0.15 0.45];


anum = 7:4:15; 
% anum = [1 2 5 10 20]; 
% anum = 20:20:80;

c=length(anum);
for i = 1:c
   num = anum(i)
   if c == 3
        Amp_rel=Amp1_rel; Shift=Tim1_del;
    elseif c == 4
        Amp_rel=Amp2_rel; Shift=Tim2_del;
    elseif c == 5
        Amp_rel=Amp3_rel; Shift=Tim3_del;
    end
  for s = 1:length(SOVs)
    SOV = SOVs{s};
    sou_x = OFFS(s);
    
    amp_file = ['CRC_',SOV,'_AMP.mat'];
    delay_file = ['CRC_',SOV,'_DELAY.mat'];
    
    load(amp_file);
    FAMP_vec = plume_delay;
    
    load(delay_file);
    FTIME_vec=plume_delay;

   amp_loc(s) = num;

    figure (1)
    subplot(3,2,s*2) 
        if num == anum(1)
             plot(FAMP_vec,Df,'k',...
                  Amp_rel(:,:,s),Dm,'LineWidth',1.5);hold on;
        else
             plot(Amp_rel(:,:,s),Dm,'LineWidth',1.5);hold on;   
        end   
    if num == anum(end)
    if c == 3
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    elseif c == 4
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    elseif c == 5
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    end
    end
    ylim(z_lim);xlim(amp_lims);
    set(gca,'YDir','reverse','FontSize',14,'FontWeight','bold');
    grid on; 
    xlabel('Relative amplitude'); ylabel('Depth (m)');hold on;

    subplot(3,2,s*2-1)   
        if num == anum(1)
             plot(FTIME_vec,Df,'k',...
                  Shift(:,:,s),Dm,'LineWidth',1.5);hold on;
        else
             plot(Shift(:,:,s),Dm,'LineWidth',1.5);hold on;   
        end  
    if num == anum(end)
    if c == 3
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    elseif c == 4
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    elseif c == 5
        title(['SOV ',num2str(SOVnum(s)),' (Offset ',num2str(OFFS(s)),' m)'],'FontWeight','bold');
    end
    end
    ylim(z_lim);xlim(time_lims);
    set(gca,'YDir','reverse','FontSize',14,'FontWeight','bold');   
    grid on; 
    xlabel('Time delay (ms)'); ylabel('Depth (m)');hold on;


  end

end




