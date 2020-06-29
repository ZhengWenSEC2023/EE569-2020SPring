% Name: Zheng Wen
% USC ID: 7112807212
% USC Email: zwen1423@usc.edu
% Submission Date 1/27/2020

function RedLayer = Red_Bi(img, m, n)
    RedLayer = zeros(m, n);
    for i = 1:m
        for j = 1:n
            if mod(i,2) == 1 && mod(j,2) == 0      % Red
                RedLayer(i,j) = img(i,j);
            elseif mod(i,2) == 1 && mod(j,2) == 1  % red line Green
                RedLayer(i,j) = round(1/2*(img(i,be_m(j-1,n))+img(i,be_m(j+1,n))));
            elseif mod(i,2) == 0 && mod(j,2) == 0  % blue line Green
                RedLayer(i,j) = round(1/2*(img(be_m(i-1,m),j)+img(be_m(i+1,m),j)));
            else                                   % Blue
                RedLayer(i,j) = round(1/4*(img(be_m(i-1,m),be_m(j-1,n))+img(be_m(i-1,m),be_m(j+1,n))+img(be_m(i+1,m),be_m(j-1,n))+img(be_m(i+1,m),be_m(j+1,n))));
            end
        end
    end
end