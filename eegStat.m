function features = eegStat(x)
  [datasize, ~] = size(x);
  features = zeros(datasize,12); % hold 12 statistical features;

  for i=1:datasize
    % get max
    features(i,1) = max(x(i,:));
    % get mean
    features(i,2) = mean(x(i,:));
    % get median
    features(i,3) = median(x(i,:));
    % get 1st quartile
    datasort = sort(x(i,:));
    features(i,4) = median(datasort(find(datasort<median(datasort))));
    % get variation
    features(i,5) = var(x(i,:));
    % get kurtosis
    features(i,6) = kurtosis(x(i,:));
    % get min
    features(i,7) = min(x(i,:));
    % get mode
    features(i,8) = mode(x(i,:));
    % get range
    features(i,9) = range(x(i,:));
    % get std
    features(i,10) = std(x(i,:));
    % get skewness
    features(i,11) = skewness(x(i,:));
    % get 2nd quartile
    features(i,12) = median(datasort);
  end
end
