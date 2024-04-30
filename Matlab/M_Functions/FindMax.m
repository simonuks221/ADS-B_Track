function ats = FindMax(reiksmes, pavadinimas)
    [~, b] = max(reiksmes);
    ats = pavadinimas(b);
end