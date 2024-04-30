function [targetPointsX,targetPointsY] = GenerateTargets(amount, start, step, signal) %Add allowable slight deviation
    targetPointsX = zeros(1, amount);
    targetPointsY = zeros(1, amount);
    for ii = 1:amount
        targetPointsX(ii) = start + step * (ii-1);
        targetPointsY(ii) = signal(targetPointsX(ii));
    end
end

