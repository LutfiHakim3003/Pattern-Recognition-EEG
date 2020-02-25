% Extract statistical features of wavelet coeficient
% 1. Extract Mean Absolute Value
% 2. Extract Average Power
% 3. Extract Standart Deviation
function output = eegDWTstat(s)
  o1 = mav(s);
  o2 = avp(s);
  o3 = std(s);

  output = [o1 o2 o3];
end
