function [number] = Bool2Symbol(row1,row2,row3,row4,col1,col2,col3,col4)
%UNTITLED Summary of this function goes here
%   takes an input of 8boolean signals and opoutputs the corrosponding dtmf
%   symbol
outarray = strings(1,length(row1));
for k =1:length(row1)
    if (row1(k)*col1(k)) ==1
        outarray(k) = "1";
    elseif (row1(k)*col2(k)) ==1
        outarray(k) = "2";
    elseif (row1(k)*col3(k)) ==1
        outarray(k) = "3";
    elseif (row1(k)*col4(k) )==1
        outarray(k) = "A";
        
    elseif (row2(k)*col1(k)) ==1
        outarray(k) = "4";
    elseif (row2(k)*col2(k)) ==1
        outarray(k) = "5";
    elseif (row2(k)*col3(k)) ==1
        outarray(k) = "6";
    elseif (row2(k)*col4(k)) ==1
        outarray(k) = "B";
        
    elseif (row3(k)*col1(k)) ==1
        outarray(k) = "7";
    elseif (row3(k)*col2(k)) ==1
        outarray(k) = "8";
    elseif (row3(k)*col3(k)) ==1
        outarray(k) = "9";
    elseif (row3(k)*col4(k)) ==1
        outarray(k) = "C";
        
    elseif (row4(k)*col1(k)) ==1
        outarray(k) = "*";
    elseif (row4(k)*col2(k)) ==1
        outarray(k) = "0";
    elseif (row4(k)*col3(k)) ==1
        outarray(k) = "#";
    elseif (row4(k)*col4(k) )==1
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
        
