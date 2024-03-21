% helloWorld.

disp('Hello World!');
disp('Ja cu nauciti MATLAB!');
load pocetnoVrijeme
disp(['Poceo sam uciti Matlab' startString]);

secPerDay = 60*60*24;

tau = 1.5*secPerDay;
endOfClass = 5*secPerDay;
knowledgeAtEnd = 1 - exp(-endOfClass/tau);
disp(['Na kraju PISP-a, ja cu znaci ' num2str(knowledgeAtEnd*100) '% Matlaba']);

secPerMin = 60;
secPerHour = 60*secPerMin;
secPerDay = 24*secPerHour;
secPerMonth = 30.5*secPerDay;
secPerYear = 12*secPerMonth;

secondConversion = [secPerYear secPerMonth secPerDay secPerHour secPerMin 1];
currentTime = clock;
elapsedTime = currentTime - start;
t = secondConversion*elapsedTime';
currentKnowledge = 1 - exp(-t/tau);
disp(['U ovom trenutku, ja znam ' num2str(currentKnowledge*100) '% Matlaba']);

tVec = linspace(0, endOfClass, 10000);
knowledgeVec = 1 - exp(-tVec/tau);

[val, ind] = min(abs(knowledgeVec - 0.5));
halfTime = tVec(ind);
disp(['Ja cu znati pola Matlaba nakon ' num2str(halfTime/secPerDay) ' dana']);

figure
plot(tVec/secPerDay, knowledgeVec);
