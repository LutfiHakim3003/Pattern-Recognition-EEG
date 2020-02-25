% Band filter from Ms. Evi
function hfilter = eegfilter(sinyal, fs, uplow)
  for i=1:size(sinyal,1)
    Fn = fs / 2;
    Wp = uplow / Fn;
    Ws = Wp .* [0.9 1.05];
    Rp = 10;
    Rs = 40;
    [n, Ws] = cheb2ord(Wp,Ws,Rp,Rs);
    [b,a] = cheby2(n, Rs, Ws);
    hfilter(i,:) = filtfilt(b,a,sinyal(i,:));
  end
end
