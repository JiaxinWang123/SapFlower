% Callback function to load data and populate the TreeCheckBox
function loadSensorsTree(app)
    % Load the data
    [file, path] = uigetfile('*.csv', 'Select the Sapflow Data File');
    if isequal(file, 0)
        return; % User canceled the file selection
    end
    data = readtable(fullfile(path, file), 'VariableNamingRule', 'preserve');
    
    % Identify sapflow sensor columns (assuming they start with 'B1' or 'B2')
    sensorColumns = data.Properties.VariableNames(startsWith(data.Properties.VariableNames, {'B1', 'B2'}));
    
    % Clear the existing tree
    delete(app.SensorsTree.Children);
    
    % Add the top-level node
    sensorsNode = uitreenode(app.SensorsTree, 'Text', 'Sensors');
    
    % Add each sensor as a child node
    for i = 1:length(sensorColumns)
        % Add a tree check box item for each sensor
        uitreenode(sensorsNode, 'Text', sensorColumns{i}, 'NodeData', sensorColumns{i});
    end
    
    % Expand the tree to show all nodes
    expand(app.SensorsTree);
end
