function [number] = effbool2symbol(combinedBbool)
%UNTITLED Summary of this function goes here
%   takes an input of 8boolean signals and opoutputs the corrosponding dtmf
%   symbol
outarray = strings(1,length(combinedBbool));
for k =1:length(combinedBbool)
    if (combinedBbool) ==7
        outarray(k) = "1";
    elseif (combinedBbool) ==11
        outarray(k) = "2";
    elseif (combinedBbool) ==13
        outarray(k) = "3";
    elseif (combinedBbool )==17
        outarray(k) = "A";
        
    elseif (combinedBbool) ==14
        outarray(k) = "4";
    elseif (combinedBbool) ==22
        outarray(k) = "5";
    elseif (combinedBbool) ==26
        outarray(k) = "6";
    elseif (combinedBbool) ==34
        outarray(k) = "B";
        
    elseif (combinedBbool) ==21
        outarray(k) = "7";
    elseif (combinedBbool) ==33
        outarray(k) = "8";
    elseif (combinedBbool) ==39
        outarray(k) = "9";
    elseif (combinedBbool) ==51
        outarray(k) = "C";
        
    elseif (combinedBbool) ==35
        outarray(k) = "*";
    elseif (combinedBbool) ==55
        outarray(k) = "0";
    elseif (combinedBbool) ==80
        outarray(k) = "#";
    elseif (combinedBbool )==85
        outarray(k) = "D";
    else
         outarray(k) = ".";
    end
    


end

number= [];
for p = 2:length(outarray)
    if (outarray(p-1) ~= outarray(p))
        number = [number, outarray(p)];
    end
end
        
