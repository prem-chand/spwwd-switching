function cost=fixed_point2(initial_alpha_red,Fext,tF,d)
warning('off','all');

clear  theta_minus theta_plus betta XX event M_bez cost_d Fimp
% d=0; energy = 0;
% global theta_minus theta_plus betta event M_bez

XX=initial_alpha_red(1:10)';    % for GA
%XX=initial_alpha_red(1:10);
M_bez=6;
[betta,theta_minus,theta_plus]=fcn_alpha_red(initial_alpha_red');
event=XX(2);
delta = 2;
options = odeset('Events',@(t,q) touchdown5_slope(t,q,d),'RelTol',1e-5,'AbsTol',1e-4);
[t,y,te,ye,ie] = ode45(@(t,Z) return_map5_original(t,Z,Fext,tF,betta,theta_minus,theta_plus,M_bez),[0 20],XX,options);
% for tp=1:size(t)
%     [fx,gx,gforce]=fcn_stance_dynamics5(y(tp,:));
%     Fext_plot = [interp1(tF,Fext,t(tp));0];
%     u(tp,:) = fcn_stance_controller5(y(tp,:),fx,gx,gforce,Fext_plot,betta,theta_minus,theta_plus,M_bez);
%     energy = energy + norm(u(tp,:));
% end
if  size(te,1)==0
    cost=20000;
else
    [xplus,~] = impact_map5(ye);
    cost = norm(xplus-XX);
end
end