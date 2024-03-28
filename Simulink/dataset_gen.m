clear; clc;
tabledata=[];

%% section 01

L1=[23 47 83 92];
% L1=15:10:90;
L2=100-L1;
% FR=[0.25 0.5 5 10 25 50 75 100];
FR=10;
col_names={'Distance','LG','LL','LLG','LLL','None',...
    'Bus','Ia','Ib','Ic','Va','Vb','Vc'};
ftype={'LG','LL','LLG','LLL','None'};
sec=0;
for ii=1:length(L1)
    tic
    set_param('conference_model/L_1_1', 'Length',num2str(L1(ii)));
    set_param('conference_model/L_1_2', 'Length',num2str(L2(ii)));
    set_param('conference_model/L_2_1', 'Length','50');
    set_param('conference_model/L_2_2', 'Length','50');
    set_param('conference_model/L_3_1', 'Length','50');
    set_param('conference_model/L_3_2', 'Length','50');

    fb='Fault_1';

    for jj=FR
        set_param(['conference_model/' fb], 'FaultResistance',num2str(jj));

        for kk=1:5
            faultActivator(fb,ftype{kk});
            sim('conference_model.slx','StartTime','0','StopTime','0.7');
            L=[0 0 0 0 0 0 1];
            L(1)=L1(ii)+sec*100;
            L(kk+1)=1;

            data=ans;
            t=data.data.Vabc1.Time;
            vabc=data.data.Vabc1.Data;
            iabc=data.data.Iabc1.Data;

            va=vabc(:,1); va=va(t>=0.25 & t<=0.65);
            vb=vabc(:,2); vb=vb(t>=0.25 & t<=0.65);
            vc=vabc(:,3); vc=vc(t>=0.25 & t<=0.65);

            ia=iabc(:,1); ia=ia(t>=0.25 & t<=0.65);
            ib=iabc(:,2); ib=ib(t>=0.25 & t<=0.65);
            ic=iabc(:,3); ic=ic(t>=0.25 & t<=0.65);

            p=length(ia);

            a=va((p-39):end); rr=myrms(a);
            a=vb((p-39):end); b=myrms(a);
            a=vc((p-39):end); c=myrms(a);
            a=ia((p-39):end); d=myrms(a);
            a=ib((p-39):end); e=myrms(a);
            a=ic((p-39):end); f=myrms(a);

            D=[L d e f rr b c];
            tabledata=[tabledata; D];
        end
    end
    ii
    toc
end

%% section 02
L1=[23 47 83 92];
% L1=15:10:90;
L2=100-L1;
% FR=[0.25 0.5 5 10 25 50 75 100];
FR=10;
col_names={'Distance','LG','LL','LLG','LLL','None',...
    'Bus','Ia','Ib','Ic','Va','Vb','Vc'};
ftype={'LG','LL','LLG','LLL','None'};
sec=0;
for ii=1:length(L1)
    tic
    set_param('conference_model/L_2_1', 'Length',num2str(L1(ii)));
    set_param('conference_model/L_2_2', 'Length',num2str(L2(ii)));
    set_param('conference_model/L_1_1', 'Length','50');
    set_param('conference_model/L_1_2', 'Length','50');
    set_param('conference_model/L_3_1', 'Length','50');
    set_param('conference_model/L_3_2', 'Length','50');

    fb='Fault_2';

    for jj=FR
        set_param(['conference_model/' fb], 'FaultResistance',num2str(jj));

        for kk=1:5
            faultActivator(fb,ftype{kk});
            sim('conference_model.slx','StartTime','0','StopTime','0.7');
            L=[0 0 0 0 0 0 2];
            L(1)=L1(ii)+sec*100;
            L(kk+1)=1;

            data=ans;
            t=data.data.Vabc2.Time;
            vabc=data.data.Vabc2.Data;
            iabc=data.data.Iabc2.Data;

            va=vabc(:,1); va=va(t>=0.25 & t<=0.65);
            vb=vabc(:,2); vb=vb(t>=0.25 & t<=0.65);
            vc=vabc(:,3); vc=vc(t>=0.25 & t<=0.65);

            ia=iabc(:,1); ia=ia(t>=0.25 & t<=0.65);
            ib=iabc(:,2); ib=ib(t>=0.25 & t<=0.65);
            ic=iabc(:,3); ic=ic(t>=0.25 & t<=0.65);

            p=length(ia);

            a=va((p-39):end); rr=myrms(a);
            a=vb((p-39):end); b=myrms(a);
            a=vc((p-39):end); c=myrms(a);
            a=ia((p-39):end); d=myrms(a);
            a=ib((p-39):end); e=myrms(a);
            a=ic((p-39):end); f=myrms(a);

            D=[L d e f rr b c];
            tabledata=[tabledata; D];
        end
    end
    ii
    toc
end

%% section 03

L1=[23 47 83 92];
% L1=15:10:90;
L2=100-L1;
% FR=[0.25 0.5 5 10 25 50 75 100];
FR=10;
col_names={'Distance','LG','LL','LLG','LLL','None',...
    'Bus','Ia','Ib','Ic','Va','Vb','Vc'};
ftype={'LG','LL','LLG','LLL','None'};
sec=0;
for ii=1:length(L1)
    tic
    set_param('conference_model/L_2_1', 'Length',num2str(L1(ii)));
    set_param('conference_model/L_2_2', 'Length',num2str(L2(ii)));
    set_param('conference_model/L_1_1', 'Length','50');
    set_param('conference_model/L_1_2', 'Length','50');
    set_param('conference_model/L_3_1', 'Length','50');
    set_param('conference_model/L_3_2', 'Length','50');

    fb='Fault_3';

    for jj=FR
        set_param(['conference_model/' fb], 'FaultResistance',num2str(jj));

        for kk=1:5
            faultActivator(fb,ftype{kk});
            sim('conference_model.slx','StartTime','0','StopTime','0.7');
            L=[0 0 0 0 0 0 3];
            L(1)=L1(ii)+sec*100;
            L(kk+1)=1;

            data=ans;
            t=data.data.Vabc3.Time;
            vabc=data.data.Vabc3.Data;
            iabc=data.data.Iabc3.Data;

            va=vabc(:,1); va=va(t>=0.25 & t<=0.65);
            vb=vabc(:,2); vb=vb(t>=0.25 & t<=0.65);
            vc=vabc(:,3); vc=vc(t>=0.25 & t<=0.65);

            ia=iabc(:,1); ia=ia(t>=0.25 & t<=0.65);
            ib=iabc(:,2); ib=ib(t>=0.25 & t<=0.65);
            ic=iabc(:,3); ic=ic(t>=0.25 & t<=0.65);

            p=length(ia);

            a=va((p-39):end); rr=myrms(a);
            a=vb((p-39):end); b=myrms(a);
            a=vc((p-39):end); c=myrms(a);
            a=ia((p-39):end); d=myrms(a);
            a=ib((p-39):end); e=myrms(a);
            a=ic((p-39):end); f=myrms(a);

            D=[L d e f rr b c];
            tabledata=[tabledata; D];
        end
    end
    ii
    toc
end


%% csv making
% A=[];
% for ii=1:size(tabledata,1)
%     A=[A; tabledata{ii}];
% end
A=tabledata;
T=array2table(A,'VariableNames',col_names);
writetable(T,'Test05.csv');


%%
clear; clc;
bs=[0 0 0 0; 0 0 0 1; 0 0 1 0; 0 0 1 1;...
    0 1 0 0; 0 1 0 1; 0 1 1 0; 0 1 1 1;...
    1 0 0 0; 1 0 0 1; 1 0 1 0; 1 0 1 1;...
    1 1 0 0; 1 1 0 1; 1 1 1 0; 1 1 1 1];

for ii=1:16
    c=bs(ii,:); b=c;
    b(c==0)=-1;
    a1=b(1); a2=b(2); a3=b(3); a4=b(4);
    p=8*a1+4*a3;
    q=8*a2+4*a4;
    q=-q;
    A=sqrt(p*p+q*q);
    if q>0 && p>0
        theta=180/pi*atan(abs(q/p));
    elseif q>0 && p<0
        theta=180-180/pi*atan(abs(q/p));
    elseif q<0 && p>0
        theta=360-180/pi*atan(abs(q/p));
    elseif q<0 && p<0
        theta=180+180/pi*atan(abs(q/p));
    end

    disp([c A theta]);
end
