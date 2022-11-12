%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SYSTEM PARAMETERS
%Dahl system parameters
mp = 0.1828;    cp = 2.5973*10^(3);     dp = 0.0468;        kp = 2.6065*10^(4);
gamma = 0.01; % gamma = 0.1 or 0.01;

A_x = [ 0           1 ;
        -kp/mp  -cp/mp];
B_x = [ 0 ; 
        1 ];
freq = 2*pi/10;

alpha = 1.1773*10^(6);
beta = 121.9874;
c = gamma/mp;
d = dp/mp ;

%Disturbed Dahl system parameters
mp_pert = mp - 0.3*mp;
kp_pert = kp + 0.1*kp; %sens
cp_pert = cp - 0.25*cp;

dp_pert = dp + 0.1*dp; %sens

alpha_pert = alpha - 0.35*alpha;
beta_pert = beta + 0.4*beta;
gamma_pert = gamma + 0.15*gamma;


%-----------------------------------------
%CONTROL PARAMETERS 
% 
% [NORMAL]
%kx      = 300*10^(1);
%kx_dot  = 150*10^(1);

% [WITH VARIABLE PARAMS ]
kx      = 450*10^(1);
kx_dot  = 400*10^(1);

%-----------------------------------------
%OBSERVER PARAMETERS
%
%Disturbance observer [NORMAL]
%kpert =  300*10^(3);
%kstate = 0.10*10^(0);
%epsilon = 0.0001;
%Cinf =  [2000*10^(0) 1000000*10^(0)];

%Disturbance observer [WITH VARIABLE PARAMS]
kpert =  80*10^(1);
kstate = 2*10^(1);
epsilon = 0.001;
Cinf =  [1000*10^(0) 7000*10^(4)];

%-----------------------------------------
%PD Control Gains
Kprop = ( kx*kx_dot + 1 );  %  1*10^(2)   %  ( kx*kx_dot + 1 ) 
Kder = ( kx + kx_dot );     %  0.5*Kprop  %  ( kx + kx_dot )
Kint = 0.01*Kprop;

%SMC from INDICON
alpha1 = 3;  %80
alpha2 = 1;  %10
beta = 5000;  %900

%END
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%*-*-*-*-*-*-*-*-*-*-
%nuevos parametros micky [RARE]:
%mp = 8.4*10^(-3); %    [kg]
%cp = 90*10^(-6);%      [N/s/m]
%dp = 0.002;%        [N/V]
%kp = 2000;%         [N/m]
