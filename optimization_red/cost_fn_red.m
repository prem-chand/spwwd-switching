function cost = cost_fn_red(ival,d)

x0 = ival(1:10)';
[alpha,theta_minus,theta_plus] = fcn_alpha_red(ival);
c = [1 1 0 0.5 0];
z0 = [c*x0(1:5)'; gamma0(x0)*x0(6:10)'];

options = odeset('Events',@(t,z) touchdown5_slope_red(t,z,alpha,theta_minus,theta_plus,d),'RelTol',1e-5,'AbsTol',1e-4);
[t,z,te,ze,ie] = ode45(@(t,z) fcn_dynamics_red(t,z,alpha,theta_minus,theta_plus),[0 20],z0,options);



if size(te,1) == 0
    cost = 20000;
else
    ye = fcn_qu_to_q(ze,alpha,theta_minus,theta_plus);
    [xplus, ~] = impact_map5(ye);
%     gam0_plus = gamma0(xplus);
%     gam0_minus = gamma0(ye);
%     delta_zero = (gam0_plus*xplus(6:10))/(gam0_minus*ye(6:10));
%     zplus = [c*xplus(1:5); gamma0(xplus)*xplus(6:10)];
%     zplus(1) = theta_plus;
%     zplus(2) = delta_zero*ye(2);
    cost = norm(xplus(:) - x0(:));
end















end