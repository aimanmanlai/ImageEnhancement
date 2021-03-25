% test4, assignment2, 2018.

close all;
clear;

R = [   0.814723686393179   0.913375856139019   0.278498218867048   0.964888535199277   0.957166948242946;
        0.905791937075619   0.632359246225410   0.546881519204984   0.157613081677548   0.485375648722841;
        0.126986816293506   0.097540404999410   0.957506835434298   0.970592781760616   0.800280468888800];

R1 = [  0.959362845163616   0.949195053266034   0.995164151927158   0.943472446747794   0.944348001204823;
        0.950013874669014   0.975317335610500   0.981481158337743   0.998448586967595   0.985383528042434;
        0.998992654493952   0.999405543596296   0.944309592218988   0.942821648039417   0.960762487652058];

R2 = [  0.960166607043672   0.950442984732608   0.995175807035165   0.945011556211771   0.945840657522985;
        0.951222553935757   0.975617000869577   0.981650534439358   0.998449789165068   0.985489315304659;
        0.998993161525875   0.999405720215502   0.945804271980324   0.944395729639849   0.961512526767116];


[R1_] = g1(R, 4);
[R2_] = g2(R, 4);


d1 = R1_(:) - R1(:);
d1s = sum(abs(d1));
if d1s>10^-3
    error('Error when calculating conduction coefficients with g1, this difference number should be less than 0.001, but you got %e.\n', d1s);
else
    fprintf('Calculating conduction coefficients with g1 seems OK (error: %e).\n', d1s);
end

d2 = R2_(:) - R2(:);
d2s = sum(abs(d2));
if d2s>10^-3
    error('Error when calculating conduction coefficients with g2, this difference number should be less than 0.001, but you got %e.\n', d2s);
else
    fprintf('Calculating conduction coefficients with g2 seems OK (error: %e).\n', d2s);
end



