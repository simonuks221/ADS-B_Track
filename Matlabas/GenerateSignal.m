function [idealSignal, noisySignal, discretizedSignal, ADCsignal, ADCpreambule] = GenerateSignal(bits, A)
    fdiskret = 10E6;
    tdiskret = 1/fdiskret;
    
    tprescaler = 10;
        
    idealOne = A*[ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler))];
    idealZero = A*[zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler))];

    idealPreambule = A*[ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(2E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler))];

    idealSignal = [idealPreambule, zeros(1, round(3E-6/tdiskret*tprescaler))];
    
    for i = 1 : strlength(bits)
        %random = round(1 + 10*randn(1)); %Jitteris
        random = 0; %Be jitterio
        if(bits{1}(i) == "0")
            if(random > 0)
                idealSignal = [idealSignal, zeros(1, random), idealZero];
            elseif(random < 0)
                idealSignal = [idealSignal, idealZero(abs(random):length(idealZero))];
            else
                idealSignal = [idealSignal, idealZero];
            end
            
        else
            if(random > 0)
                idealSignal = [idealSignal, zeros(1, random), idealOne];
            elseif(random < 0)
                idealSignal = [idealSignal, idealOne(1:(length(idealOne)-abs(random)))];
            else
                idealSignal = [idealSignal, idealOne];
            end
            
        end
    end

    idealSignal = [zeros(1, round(25E-6/tdiskret*tprescaler)), idealSignal, zeros(1, round(15E-6/tdiskret*tprescaler))];

    %Noisy signalas
    load 'FiltroKoef.mat';
    noisySignal1 = filter(Hd, idealSignal);
    %Triuksmo generavimas
    vid = 0.2;
    std = 1;
    %vid = 0;
    %std = 0;
    %triuksmas = vid + std*randn(1, N);
    triuksmas = vid + std*randn(1, length(noisySignal1));
    
    triuksmasFiltruotas = filter(Hd, triuksmas);
    noisySignal = noisySignal1 + triuksmasFiltruotas;
    snr(noisySignal1, triuksmasFiltruotas)

    %Diskretizuotas
    discretizedSignal = DiscretizeSignal(noisySignal);

    %ADC
    ADCsignal = SteppSignal(discretizedSignal);
    ADCpreambule = SteppSignal(idealPreambule);
    return 
end