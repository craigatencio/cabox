function [Patterns, Activities] = ca_detect_cell_assemblies_data(Activitymatrix)
% ca_detecting_cell_assemblies_data Cell assembly detection using PCA/ICA
% 
%     ca_detecting_cell_assemblies_toy_code(Activitymatrix) estimates the cell
%     assemblies from the spike train matrix Activitymatrix.
%
%     Activitymatrix : spike train matrix. m x n matrix. m = number of neurons, n = number of
%     time bins. Activitymatrix(i,j) = # of spikes by neuron i at time bin
%     j. 
% 
%     Output shows the spike train matrix, the correlation between the
%     different neurons, the cell assemblies, and the activation patterns
%     of each assembly. The activation pattern is the time varying activity
%     of the assembly.
%
%
%    detecting_cell_assemblies_toy_code(Activitymatrix, position) places
%    the electrode recording channel depth on the plots instead of the
%    neuron number. This may help to determine how neurons are synchronized
%    across the cortical column.



Patterns = assembly_patterns(Activitymatrix);
Activities = assembly_activity(Patterns, Activitymatrix);


return;



