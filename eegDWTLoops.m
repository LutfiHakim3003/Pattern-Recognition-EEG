% This is super dummy solution for extracting DWT for each segment
% Please think about other solution you dumbass!

function [b, a, t, d] = eegDWTLoops(x, wfamily)
  [b_s1, a_s1, t_s1, d_s1] = eegDWT(x(1,:), wfamily);
  [b_s2, a_s2, t_s2, d_s2] = eegDWT(x(2,:), wfamily);
  [b_s3, a_s3, t_s3, d_s3] = eegDWT(x(3,:), wfamily);
  [b_s4, a_s4, t_s4, d_s4] = eegDWT(x(4,:), wfamily);
  [b_s5, a_s5, t_s5, d_s5] = eegDWT(x(5,:), wfamily);

  b = [b_s1;b_s2;b_s3;b_s4;b_s5];
  a = [a_s1;a_s2;a_s3;a_s4;a_s5];
  t = [t_s1;t_s2;t_s3;t_s4;t_s5];
  d = [d_s1;d_s2;d_s3;d_s4;d_s5];
end
