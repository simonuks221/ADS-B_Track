function [idealSignal, noisySignal, discretizedSignal, ADCsignal, ADCpreambule, signalSNR_db] = GenerateSignal(bits, A)
    fdiskret = 10E6;
    tdiskret = 1/fdiskret;
    
    tprescaler = 10;
        
    idealOne = A*[ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler))];
    idealZero = A*[zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler))]; %100ilgis

    idealPreambule = A*[ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(2E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler)), zeros(1, round(0.5E-6/tdiskret*tprescaler)), ones(1, round(0.5E-6/tdiskret*tprescaler))];

    idealSignal = [idealPreambule, zeros(1, round(3E-6/tdiskret*tprescaler)), zeros(1, length(idealZero)*(length(bits)-5))]; %500+300+100*strlen
    
    pridejimoVietaPradzia = 800;
    bituSkaicius = length(bits);

    for i = 1 : bituSkaicius
        if(bits(i) == 0)
             idealSignal(pridejimoVietaPradzia:pridejimoVietaPradzia+length(idealOne)-1) = idealZero;
        else
            idealSignal(pridejimoVietaPradzia:pridejimoVietaPradzia+length(idealZero)-1) = idealOne;
        end
        pridejimoVietaPradzia = pridejimoVietaPradzia+length(idealOne);
    end

    idealSignal = [zeros(1, round(25E-6/tdiskret*tprescaler)), idealSignal, zeros(1, round(15E-6/tdiskret*tprescaler))];

    %Noisy signalas
    load 'FiltroKoef.mat';
    nufiltruotasSignalas = filter(Hd, idealSignal);
    %Triuksmo generavimas
    vid = 0;
    std = 1;
    %vid = 0;
    %std = 0;
    %triuksmas = vid + std*randn(1, N);
    %triuksmas = vid + std*rand(1, length(nufiltruotasSignalas));
    triuksmas = rand(1, length(nufiltruotasSignalas))*1.2-0.6; %Was 1.5-0.6
    figure

    naudingoSignaloPradzia = 2500;
    naudingoSignaloPabaiga = naudingoSignaloPradzia+500+300+bituSkaicius*length(idealZero)+100; %pradzia+preambule+pauze+duomenys+uodega
    
    naudingoSignaloPradzia = 2500;
    naudingoSignaloPabaiga = naudingoSignaloPradzia+500; %TESTAVIMUI

    triuksmasFiltruotas = filter(Hd, triuksmas);
    noisySignal = nufiltruotasSignalas + triuksmasFiltruotas;
    signalSNR_db = snr(nufiltruotasSignalas(naudingoSignaloPradzia:naudingoSignaloPabaiga), triuksmasFiltruotas(naudingoSignaloPradzia:naudingoSignaloPabaiga));
    %signalSNR_db = snr(nufiltruotasSignalas, triuksmasFiltruotas(250:length(nufiltruotasSignalas)));
    %figure
    %plot(nufiltruotasSignalas(naudingoSignaloPradzia:naudingoSignaloPabaiga))
    %hold on
    %plot(triuksmasFiltruotas(2500:4000))
    
    %plot(noisySignal(2500:4000))
    %legend("Signalas", "Triuskams", "Viso")
    %hold off
    %Diskretizuotas
    discretizedSignal = DiscretizeSignal(noisySignal);

    %ADC
    ADCsignal = SteppSignal(discretizedSignal);
    ADCpreambule = SteppSignal(idealPreambule);
    return 
end