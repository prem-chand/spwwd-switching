function [h,Lfh,DLfh_Dx] = fcn_liederivative_m5(Y,alpha)

  global theta_minus theta_plus;
  deltheta=theta_plus - theta_minus;
  
  h(1,1)=Y(2) - alpha(1,1)*((Y(1) + Y(2) + Y(4)/2 - theta_plus)/deltheta + 1)^5 + (alpha(1,6)*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^5)/deltheta^5 + (5*alpha(1,2)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^4*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta - (5*alpha(1,5)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^4)/deltheta^4 - (10*alpha(1,3)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2 + (10*alpha(1,4)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3)/deltheta^3;
  h(2,1)=Y(3) - alpha(2,1)*((Y(1) + Y(2) + Y(4)/2 - theta_plus)/deltheta + 1)^5 + (alpha(2,6)*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^5)/deltheta^5 + (5*alpha(2,2)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^4*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta - (5*alpha(2,5)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^4)/deltheta^4 - (10*alpha(2,3)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2 + (10*alpha(2,4)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3)/deltheta^3;
  h(3,1)=Y(4) - alpha(3,1)*((Y(1) + Y(2) + Y(4)/2 - theta_plus)/deltheta + 1)^5 + (alpha(3,6)*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^5)/deltheta^5 + (5*alpha(3,2)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^4*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta - (5*alpha(3,5)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^4)/deltheta^4 - (10*alpha(3,3)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2 + (10*alpha(3,4)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3)/deltheta^3;
  h(4,1)=Y(5) - alpha(4,1)*((Y(1) + Y(2) + Y(4)/2 - theta_plus)/deltheta + 1)^5 + (alpha(4,6)*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^5)/deltheta^5 + (5*alpha(4,2)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^4*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta - (5*alpha(4,5)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^4)/deltheta^4 - (10*alpha(4,3)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2 + (10*alpha(4,4)*((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)/deltheta + 1)^2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3)/deltheta^3;

   Lfh(1,1)=- Y(7)*((5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*...
         alpha(1,5)))/deltheta^3 + ((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta - 1) - (Y(6)*(5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(1,1) - 25*...
         alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((20*...
         alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(1,1) - 90*...
         alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(9)*(5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(1,1) - 25*...
         alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((20*...
         alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(1,1) - 90*...
         alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2))/(2*deltheta);
  Lfh(2,1)=Y(8) - (Y(6)*(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*...
         alpha(2,5)))/deltheta^3 + ((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(7)*(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(2,1) - 25*...
         alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((20*...
         alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(2,1) - 90*...
         alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(9)*(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(2,1) - 25*...
         alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((20*...
         alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(2,1) - 90*...
         alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2))/(2*deltheta);
  Lfh(3,1)=- Y(9)*((5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/deltheta^3 + ((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/(2*deltheta) - 1) - (Y(6)*(5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/deltheta^3 + ((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(7)*(5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(3,1) - 25*...
         alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((20*...
         alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(3,1) - 90*...
         alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta;
  Lfh(4,1)=Y(10) - (Y(6)*(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*...
         alpha(4,5)))/deltheta^3 + ((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(7)*(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(4,1) - 25*...
         alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((20*...
         alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(4,1) - 90*...
         alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2))/deltheta - (Y(9)*(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*alpha(4,1) - 25*...
         alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((20*...
         alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta + ((30*alpha(4,1) - 90*...
         alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2))/(2*deltheta);

   DLfh_Dx(1,1)=- (Y(6)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*...
         alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*...
         alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(1,1) - 40*alpha(1,2) + 20*...
         alpha(1,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*...
         alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*...
         alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*...
         alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*...
         alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(1,2)=- (Y(6)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*...
         alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*...
         alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(1,1) - 40*alpha(1,2) + 20*...
         alpha(1,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*...
         alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*...
         alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*...
         alpha(1,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*...
         alpha(1,4) + 20*alpha(1,5)))/deltheta^3 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(1,3)=0;
  DLfh_Dx(1,4)=- (Y(6)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/(2*deltheta) + (2*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*...
         alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*...
         alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/(2*deltheta^3)))/deltheta - (Y(7)*((20*...
         alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/(2*deltheta) + (2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*...
         alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((30*...
         alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*...
         alpha(1,5)))/(2*deltheta^3)))/deltheta - (Y(9)*((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))/(2*deltheta) + (2*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*...
         alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(1,1) - 80*...
         alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*alpha(1,5)))/(2*deltheta^3)))/(2*deltheta);
  DLfh_Dx(1,5)=0;
  DLfh_Dx(1,6)=-(5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*...
         alpha(1,5)))/deltheta^3 + ((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(1,7)=1 - (5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*...
         alpha(1,5)))/deltheta^3 + ((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(1,8)=0;
  DLfh_Dx(1,9)=-(5*alpha(1,1) - 5*alpha(1,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(1,1) - 25*alpha(1,2) + 50*alpha(1,3) - 50*alpha(1,4) + 25*alpha(1,5) - 5*alpha(1,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(1,1) - 80*alpha(1,2) + 120*alpha(1,3) - 80*alpha(1,4) + 20*...
         alpha(1,5)))/deltheta^3 + ((20*alpha(1,1) - 40*alpha(1,2) + 20*alpha(1,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(1,1) - 90*alpha(1,2) + 90*alpha(1,3) - 30*alpha(1,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/(2*deltheta);
  DLfh_Dx(1,10)=0;
  DLfh_Dx(2,1)=- (Y(6)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*...
         alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*...
         alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(2,1) - 40*alpha(2,2) + 20*...
         alpha(2,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*...
         alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*...
         alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*...
         alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*...
         alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(2,2)=- (Y(6)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*...
         alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*...
         alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(2,1) - 40*alpha(2,2) + 20*...
         alpha(2,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*...
         alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*...
         alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*...
         alpha(2,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*...
         alpha(2,4) + 20*alpha(2,5)))/deltheta^3 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(2,3)=0;
  DLfh_Dx(2,4)=- (Y(6)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/(2*deltheta) + (2*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*...
         alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*...
         alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/(2*deltheta^3)))/deltheta - (Y(7)*((20*...
         alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/(2*deltheta) + (2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*...
         alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((30*...
         alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*...
         alpha(2,5)))/(2*deltheta^3)))/deltheta - (Y(9)*((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))/(2*deltheta) + (2*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*...
         alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(2,1) - 80*...
         alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*alpha(2,5)))/(2*deltheta^3)))/(2*deltheta);
  DLfh_Dx(2,5)=0;
  DLfh_Dx(2,6)=-(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*...
         alpha(2,5)))/deltheta^3 + ((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(2,7)=-(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*...
         alpha(2,5)))/deltheta^3 + ((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(2,8)=1;
  DLfh_Dx(2,9)=-(5*alpha(2,1) - 5*alpha(2,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(2,1) - 25*alpha(2,2) + 50*alpha(2,3) - 50*alpha(2,4) + 25*alpha(2,5) - 5*alpha(2,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(2,1) - 80*alpha(2,2) + 120*alpha(2,3) - 80*alpha(2,4) + 20*...
         alpha(2,5)))/deltheta^3 + ((20*alpha(2,1) - 40*alpha(2,2) + 20*alpha(2,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(2,1) - 90*alpha(2,2) + 90*alpha(2,3) - 30*alpha(2,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/(2*deltheta);
  DLfh_Dx(2,10)=0;
  DLfh_Dx(3,1)=- (Y(6)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*...
         alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*...
         alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(3,1) - 40*alpha(3,2) + 20*...
         alpha(3,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*...
         alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*...
         alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*...
         alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*...
         alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(3,2)=- (Y(6)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*...
         alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*...
         alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(3,1) - 40*alpha(3,2) + 20*...
         alpha(3,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*...
         alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*...
         alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*...
         alpha(3,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*...
         alpha(3,4) + 20*alpha(3,5)))/deltheta^3 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(3,3)=0;
  DLfh_Dx(3,4)=- (Y(6)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/(2*deltheta) + (2*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*...
         alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*...
         alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*alpha(3,5)))/(2*deltheta^3)))/deltheta - (Y(7)*((20*...
         alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/(2*deltheta) + (2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((30*...
         alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/(2*deltheta^3)))/deltheta - (Y(9)*((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))/(2*deltheta) + (2*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*...
         alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(3,1) - 80*...
         alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*alpha(3,5)))/(2*deltheta^3)))/(2*deltheta);
  DLfh_Dx(3,5)=0;
  DLfh_Dx(3,6)=-(5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/deltheta^3 + ((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(3,7)=-(5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/deltheta^3 + ((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(3,8)=0;
  DLfh_Dx(3,9)=1 - (5*alpha(3,1) - 5*alpha(3,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(3,1) - 25*alpha(3,2) + 50*alpha(3,3) - 50*alpha(3,4) + 25*alpha(3,5) - 5*alpha(3,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(3,1) - 80*alpha(3,2) + 120*alpha(3,3) - 80*alpha(3,4) + 20*...
         alpha(3,5)))/deltheta^3 + ((20*alpha(3,1) - 40*alpha(3,2) + 20*alpha(3,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(3,1) - 90*alpha(3,2) + 90*alpha(3,3) - 30*alpha(3,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/(2*deltheta);
  DLfh_Dx(3,10)=0;
  DLfh_Dx(4,1)=- (Y(6)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*...
         alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*...
         alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(4,1) - 40*alpha(4,2) + 20*...
         alpha(4,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*...
         alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*...
         alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*...
         alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*...
         alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(4,2)=- (Y(6)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*...
         alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*...
         alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/deltheta - (Y(7)*((20*alpha(4,1) - 40*alpha(4,2) + 20*...
         alpha(4,3))/deltheta + (4*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*...
         alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*...
         alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*...
         alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*Y(1) + 2*Y(2) + Y(4) - 2*...
         theta_plus))/deltheta^2))/deltheta - (Y(9)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/deltheta + (4*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*...
         alpha(4,6)))/deltheta^4 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*...
         alpha(4,4) + 20*alpha(4,5)))/deltheta^3 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(2*...
         Y(1) + 2*Y(2) + Y(4) - 2*theta_plus))/deltheta^2))/(2*deltheta);
  DLfh_Dx(4,3)=0;
  DLfh_Dx(4,4)=- (Y(6)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/(2*deltheta) + (2*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*...
         alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*...
         alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/(2*deltheta^3)))/deltheta - (Y(7)*((20*...
         alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/(2*deltheta) + (2*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*...
         alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((30*...
         alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*...
         alpha(4,5)))/(2*deltheta^3)))/deltheta - (Y(9)*((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))/(2*deltheta) + (2*...
         (Y(1) + Y(2) + Y(4)/2 - theta_plus)^3*(5*alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*...
         alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) +...
          Y(2) + Y(4)/2 - theta_plus))/deltheta^2 + (3*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2*(20*alpha(4,1) - 80*...
         alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*alpha(4,5)))/(2*deltheta^3)))/(2*deltheta);
  DLfh_Dx(4,5)=0;
  DLfh_Dx(4,6)=-(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*...
         alpha(4,5)))/deltheta^3 + ((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(4,7)=-(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*...
         alpha(4,5)))/deltheta^3 + ((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) + Y(4)/2 - theta_plus)^2)/deltheta^2)/deltheta;
  DLfh_Dx(4,8)=0;
  DLfh_Dx(4,9)=-(5*alpha(4,1) - 5*alpha(4,2) + ((Y(1) + Y(2) + Y(4)/2 - theta_plus)^4*(5*...
         alpha(4,1) - 25*alpha(4,2) + 50*alpha(4,3) - 50*alpha(4,4) + 25*alpha(4,5) - 5*alpha(4,6)))/deltheta^4 + ((Y(1) +...
          Y(2) + Y(4)/2 - theta_plus)^3*(20*alpha(4,1) - 80*alpha(4,2) + 120*alpha(4,3) - 80*alpha(4,4) + 20*...
         alpha(4,5)))/deltheta^3 + ((20*alpha(4,1) - 40*alpha(4,2) + 20*alpha(4,3))*(Y(1) + Y(2) + Y(4)/2 - theta_plus))/deltheta +...
          ((30*alpha(4,1) - 90*alpha(4,2) + 90*alpha(4,3) - 30*alpha(4,4))*(Y(1) + Y(2) +...
          Y(4)/2 - theta_plus)^2)/deltheta^2)/(2*deltheta);
  DLfh_Dx(4,10)=1;

end