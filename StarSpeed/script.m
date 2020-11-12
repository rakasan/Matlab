%Load the initial data. spectra is an array 375 on 10 with values
	load starData
	localV = spectra
	nObs = size(spectra,1)
	lambdaStart = 630.02
	lambdaDelta = 0.14
%Task 1
	lambdaEnd = lambdaStart + (nObs -1)*lambdaDelta % calculate the end
	lambda = [lambdaStart:lambdaDelta:lambdaEnd] % create a local array with a step of lambdaDelta starting from lambdaStart to lambdaEnd
	lambda = lambda' % convert the lines into columns
%Task 2
	s = spectra(:,2) % select the entire second column
% Task 3
	hold on								%hold the plot to add all the elements on it
	loglog(lambda,s,".-")				%create a plot 
	xlabel("Wavelength")
	ylabel("Intensity")
%Task 4
	[sHa,idx] = min(s)					%get the min and the index of the min
	lambdaHa = lambda(idx)				%store the value given at that address
%Task 5
	plot(lambdaHa,sHa,"rs","MarkerSize",8) %add a marker
%Task 6
	z = (lambdaHa/656.28) -1			% Calculate the deviation
	speed =z* 299792.458				% Calculate the speed of the deviation