function [ targets, results ] = bubbleSort(targets, results)
%bubbleSort is a quick implementation of the sorting algorithm

 for i=1:(length(results))
    for j=1:(length(results)-i)
      if  results(j) < results(j+1)
        m = results(j);
        results(j) = results(j+1);
        results(j+1) = m;
        n = targets(j);
        targets(j) = targets(j+1);
        targets(j+1) = n;
      end
    end
 end


end

