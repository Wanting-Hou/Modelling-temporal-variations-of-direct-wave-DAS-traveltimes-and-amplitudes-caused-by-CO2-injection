clear all;close all;clc

   load('data\D.mat');load('data\A.mat');load('data\Am.mat');

    figure(1); 
   subplot(191)  
   scatter(A3,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on;
   plot(Am(:,1),D2,'r','LineWidth',1.5); hold on;
   set(gca,'ydir','reverse'); hold on;  xlim([0 2.7]);ylim([650 1630]);
   xlabel('A^{Norm}');ylabel('Depth (m)'); title('SOV3 (100m)',' (81 days)');  
   set(gca,'FontSize',18);hold on

   subplot(192)
   scatter(A2,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,2),D2,'r','LineWidth',1.5); hold on;
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  xlim([0 2.7]);ylim([650 1630]);
   xlabel('A^{Norm}'); title('SOV2 (400m)',' (80 days)');
   set(gca,'FontSize',18);hold on   

   subplot(193)
   scatter(A9,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,2),D2,'r','LineWidth',1.5); hold on;
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  xlim([0 2.7]);ylim([650 1630]);
   xlabel('A^{Norm}'); title('SOV9 (400m)',' (80 days)');
   set(gca,'FontSize',18);hold on; 

   subplot(194)
   scatter(A5,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,3),D2,'r','LineWidth',1.5); hold on;
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  
   xlabel('A^{Norm}'); title('SOV5 (500m)',' (75 days)'); xlim([0 2.7]);ylim([650 1630]);
   set(gca,'FontSize',18);hold on; 

   subplot(195)   
   scatter(A1,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,4),D2,'r','LineWidth',1.5); hold on;xlim([0 2.7]);ylim([650 1630]);
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on; 
   xlabel('A^{Norm}'); title('SOV1 (600m)',' (80 days)','FontSize',15); 
   set(gca,'FontSize',18);hold on; 

   subplot(199)
   scatter(A4,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,6),D2,'r','LineWidth',1.5); hold on;xlim([0 2.7]);ylim([650 1630]);
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  
   xlabel('A^{Norm}'); title('SOV4 (900m)',' (78 days)','FontSize',15);
   set(gca,'FontSize',18);hold on; 

   subplot(198)
   scatter(A8,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,5),D2,'r','LineWidth',1.5); hold on;xlim([0 2.7]);ylim([650 1630]);
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  
   xlabel('A^{Norm}'); title('SOV8 (800m)',' (78 days)','FontSize',15);
   set(gca,'FontSize',18);hold on; 

   subplot(197)
   scatter(A7,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,5),D2,'r','LineWidth',1.5); hold on;xlim([0 2.7]);ylim([650 1630]);
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on;  
   xlabel('A^{Norm}'); title('SOV7 (800m)',' (76 days)','FontSize',15);
   set(gca,'FontSize',18);hold on;  

   subplot(196)
   scatter(A6,D1,5,'MarkerFaceColor','b','MarkerEdgeColor','b','MarkerFaceAlpha',0.1,...
       'MarkerEdgeAlpha',0.1); hold on; 
   plot(Am(:,5),D2,'r','LineWidth',1.5); hold on;xlim([0 2.7]);ylim([650 1630]);
   set(gca,'ydir','reverse', 'YTickLabel', []); hold on; 
   xlabel('A^{Norm}'); title('SOV6 (800m)',' (62 days)');
   set(gca,'FontSize',18);hold on; 
