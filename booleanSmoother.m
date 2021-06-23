function outputarray = booleanSmoother(inputArray)
%BOOLEANSMOOTHER Summary of this function goes here
%   Detailed explanation goes here
outputarray = zeros(1,length(inputArray));
for k =1:(length(inputArray) - 6)
    if ismember(1,inputArray(k: k+ 6 -1))
        outputarray(k:k+ 6 -1) = 1;
        k = k+ 6 -1;
    end
    
        
    
end

