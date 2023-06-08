function y = GenerateMA(signal, amount)
    naujas = [];
    for i = 1:amount
        naujasMA = sum(signal(1:i))/amount;
        naujas = [naujas, naujasMA];
    end

    for i = amount+1:length(signal)
        naujasMA = sum(signal(i-amount+1:i))/amount;
        naujas = [naujas, naujasMA];
    end
    y = naujas;
end