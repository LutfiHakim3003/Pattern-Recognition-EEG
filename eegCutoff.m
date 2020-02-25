% Cut eeg data into 300s
function output = eegCutoff(x)
  output = x(:,2561:156160);
end
