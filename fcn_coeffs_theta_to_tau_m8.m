function C = fcn_coeffs_theta_to_tau_m8(b,theta_plus,theta_minus)
%FCN_COEFFS_THETA_TO_TAU Summary of this function goes here
%   Detailed explanation goes here
a0 = b(1);
a1 = b(2); a2=b(3); a3 = b(4); a4 = b(5); a5 = b(6); a6 = b(7); a7 = b(8); a8 = b(9); 

C = [ a8*theta_plus^8 + a7*theta_plus^7 + a6*theta_plus^6 + a5*theta_plus^5 ...
    + a4*theta_plus^4 + a3*theta_plus^3 + a2*theta_plus^2 + a1*theta_plus + a0, ...
    - a1*(theta_plus - theta_minus) - 3*a3*theta_plus^2*(theta_plus - theta_minus) ...
    - 4*a4*theta_plus^3*(theta_plus - theta_minus) - 5*a5*theta_plus^4*(theta_plus - theta_minus) ...
    - 6*a6*theta_plus^5*(theta_plus - theta_minus) - 7*a7*theta_plus^6*(theta_plus - theta_minus) ...
    - 8*a8*theta_plus^7*(theta_plus - theta_minus) - 2*a2*theta_plus*(theta_plus - theta_minus), ...
    a2*(theta_plus - theta_minus)^2 + 3*a3*theta_plus*(theta_plus - theta_minus)^2 ...
    + 6*a4*theta_plus^2*(theta_plus - theta_minus)^2 + 10*a5*theta_plus^3*(theta_plus - theta_minus)^2 ...
    + 15*a6*theta_plus^4*(theta_plus - theta_minus)^2 + 21*a7*theta_plus^5*(theta_plus - theta_minus)^2 ...
    + 28*a8*theta_plus^6*(theta_plus - theta_minus)^2, - a3*(theta_plus - theta_minus)^3 ...
    - 4*a4*theta_plus*(theta_plus - theta_minus)^3 - 10*a5*theta_plus^2*(theta_plus - theta_minus)^3 ...
    - 20*a6*theta_plus^3*(theta_plus - theta_minus)^3 - 35*a7*theta_plus^4*(theta_plus - theta_minus)^3 ...
    - 56*a8*theta_plus^5*(theta_plus - theta_minus)^3, a4*(theta_plus - theta_minus)^4 ...
    + 5*a5*theta_plus*(theta_plus - theta_minus)^4 + 15*a6*theta_plus^2*(theta_plus - theta_minus)^4 ...
    + 35*a7*theta_plus^3*(theta_plus - theta_minus)^4 + 70*a8*theta_plus^4*(theta_plus - theta_minus)^4, ...
    - a5*(theta_plus - theta_minus)^5 - 6*a6*theta_plus*(theta_plus - theta_minus)^5 ...
    - 21*a7*theta_plus^2*(theta_plus - theta_minus)^5 - 56*a8*theta_plus^3*(theta_plus - theta_minus)^5, ...
    a6*(theta_plus - theta_minus)^6 + 7*a7*theta_plus*(theta_plus - theta_minus)^6 ...
    + 28*a8*theta_plus^2*(theta_plus - theta_minus)^6, - a7*(theta_plus - theta_minus)^7 ...
    - 8*a8*theta_plus*(theta_plus - theta_minus)^7, a8*(theta_plus - theta_minus)^8];
 
end

