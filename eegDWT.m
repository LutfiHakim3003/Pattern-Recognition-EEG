% Get detail coeficient of WT
% raw signal sampling rate 512 Hz
% delta : 0 - 4 Hz
% tetha : 4 - 8 Hz
% alpha : 8 - 16 Hz
% beta : 16 - 32 Hz
function [b, a, t, d] = eegDWT(s, wfilter)
  level = 8; % set DWT level
  select_level = [5 6 7 8];
  [c, l] = wavedec(s, level, wfilter);
  [b ,a ,t, d] = detcoef(c,l, select_level);
end
