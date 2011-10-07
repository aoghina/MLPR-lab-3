clc;
clear all;
close all;

load mlpr_data/data_intensity_25x50.mat;
load trainSpace.mat;
load trainPedestrian.mat;
load trainNonPedestrian.mat;

pedTest = ped_test_int_25x50(:, 2:1251); 
nonPedTest = garb_test_int_25x50(:, 2:1251);
%inputImage = pedTest(250, :);
%isPed = checkPedestrian(inputImage);
%inputImage = reshape(inputImage, [50, 25]);
%imshow(inputImage, []);
nPed = 0;

for i=1:500
   inputImage = pedTest(i, :);
   isPed = checkPedestrian(inputImage);
   if (isPed == true)
       nPed = nPed + 1;
   end
end

nPed

%if isPed == true
%   display('Pedestrian detected.');
%else
%   display('Pedestrian not detected.');
%end