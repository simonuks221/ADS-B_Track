function [konvSignalai, konvPavadinimai, konvLaikai] = SignaluKonvoliucija(pagrindinisSignalas, preambulesSignalas, grafikai)
    fdiskret = 10E6;
    tdiskret = 1/fdiskret;
    
    tprescaler = 10;
    ikiKurIeskotiPreambules = 75;
    
    idealOne = [ones(1, round(0.5E-6/tdiskret*tprescaler)), 0*ones(1, round(0.5E-6/tdiskret*tprescaler))];
    idealZero = [0*ones(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler))];

    konvoliucijaPreambule = conv(pagrindinisSignalas, preambulesSignalas);
    [amplitiude, velinimasPreambulesN] = max(konvoliucijaPreambule(1:ikiKurIeskotiPreambules));
    velinimasPreambules = velinimasPreambulesN / fdiskret;
    
    if grafikai == 1
        n = 1:length(pagrindinisSignalas);
        t = n/fdiskret;
        
        figure
        stairs(n, konvoliucijaPreambule(1:length(pagrindinisSignalas)))
        xline(velinimasPreambulesN);
        title('Koreliacija su preambule')
        xlabel('Atskaitos, n')
    end

    n11 = GenerateConv(pagrindinisSignalas, [idealOne(1:10:length(idealOne)), idealOne(1:10:length(idealOne))]);
    n00 = GenerateConv(pagrindinisSignalas, [idealZero(1:10:length(idealZero)), idealZero(1:10:length(idealZero))]);
    n01 = GenerateConv(pagrindinisSignalas, [idealZero(1:10:length(idealZero)), idealOne(1:10:length(idealOne))]);
    n10 = GenerateConv(pagrindinisSignalas, [idealOne(1:10:length(idealOne)), idealZero(1:10:length(idealZero))]);
    np = GenerateConv(pagrindinisSignalas, preambulesSignalas);
    
    if grafikai == 1
        figure
        stairs(pagrindinisSignalas, 'LineWidth',2)
        hold on
        stairs(n00)
        stairs(n11)
        stairs(n10)
        stairs(n01)
        %stairs(np)
        
        
        
        xline((velinimasPreambules)*fdiskret);
        xline((velinimasPreambules+3E-6)*fdiskret);
        xline((velinimasPreambules+3E-6+2E-6)*fdiskret);
        xline((velinimasPreambules+3E-6+4E-6)*fdiskret);
        xline((velinimasPreambules+3E-6+6E-6)*fdiskret);
        
        legend("Originalus", "00", "11", "10", "01")
        title('Koreliacija su bitais po du')
        xlabel('Atskaitos, n')
        hold off
    end

    konvSignalai = [n11; n00; n10; n01];
    konvPavadinimai = ["11"; "00"; "10"; "01"];
    konvLaikai = [round((velinimasPreambules+3E-6+2E-6)*fdiskret),round((velinimasPreambules+3E-6+4E-6)*fdiskret), round((velinimasPreambules+3E-6+6E-6)*fdiskret)];
end