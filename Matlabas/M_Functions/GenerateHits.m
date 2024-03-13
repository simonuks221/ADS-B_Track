function [hitPointsX,hitPointsY] = GenerateHits(signal, approximation)
    start_point = 10;
    hitPointsX = zeros(1, length(signal) - start_point);
    hitPointsY = zeros(1, length(signal) - start_point);
    hitPointsIndex = 1;
    for ii = start_point:length(signal)
        if signal(ii) > approximation(ii)
            hitPointsX(hitPointsIndex) = ii;
            hitPointsY(hitPointsIndex) = signal(ii);
            hitPointsIndex = hitPointsIndex + 1;
        end
    end
    hitPointsX = hitPointsX(1:hitPointsIndex-1);
    hitPointsY = hitPointsY(1:hitPointsIndex-1);
end

