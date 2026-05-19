mkdir('meshes')
stepFiles = dir('*.STEP');

for i = 1:length(stepFiles)
    stepName = stepFiles(i).name;
    stlName = fullfile('meshes', strrep(stepName, '.STEP', '.stl'));
    
    fprintf('Converting: %s\n', stepName);
    
    shp = importGeometry(stepName);
    
    % استخرج الـ mesh من الـ geometry
    [nodes, elements] = meshToPET(shp);
    TR = triangulation(elements, nodes);
    stlwrite(TR, stlName);
    
    fprintf('Done: %s\n', stlName);
end

disp('All files converted!')