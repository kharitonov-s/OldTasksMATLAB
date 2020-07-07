function [ output_args ] = zadanie2_05_04 ( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
input_args=magic(7) 
b=max(max(input_args));
m=max(input_args);
[a1,a2]=size(input_args);
for k=1:a2
    if b==m(1,k)
        s=input_args(:,k);
        input_args(:,k)=input_args(:,1);
        input_args(:,1)=s;
    end
end
input_args
end

