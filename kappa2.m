function k2 = kappa2( q )
G1=(73696*sin(q(1) + q(2) + q(4)))/625 - (4704*sin(q(1) + q(3) + q(5)))/625 + (131957*...
         sin(q(1) + q(2)))/1250 - (24843*sin(q(1) + q(3)))/1250 - (3528*sin(q(1)))/125;
k2=-G1;

end

