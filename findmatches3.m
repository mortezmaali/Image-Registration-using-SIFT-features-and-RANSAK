function [matchedPoints1,matchedPoints2]=findmatches3(I1,I2)
run('C:\Users\Morteza\Desktop\YouTube\vlfeat-0.9.21\toolbox\vl_setup')
I1 = single(I1) ;
I2 = single(I2) ;
[f1,d1] = vl_sift(I1) ;
[f2,d2] = vl_sift(I2) ;
[matches, scores] = vl_ubcmatch(d1, d2);
matchedPoints1 = f1(1:2,matches(1,:));
matchedPoints2 = f2(1:2,matches(2,:));