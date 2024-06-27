classdef SapFlower_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SapFlowerUIFigure               matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        CreateNewFileMenu               matlab.ui.container.Menu
        OpenFileMenu                    matlab.ui.container.Menu
        SaveMenu                        matlab.ui.container.Menu
        ExitMenu                        matlab.ui.container.Menu
        EditMenu                        matlab.ui.container.Menu
        CleanDataMenu                   matlab.ui.container.Menu
        SmoothdataMenu_2                matlab.ui.container.Menu
        SimpleMovingAverageSMAMenu_2    matlab.ui.container.Menu
        ExponentialMovingAverageEMAMenu_2  matlab.ui.container.Menu
        KalmanFilterMenu_2              matlab.ui.container.Menu
        SeasonalDecompositionofTimeSeriesSTLMenu_2  matlab.ui.container.Menu
        GaussianProcessRegressionMenu_2  matlab.ui.container.Menu
        SavitzkyGolayFilterMenu_2       matlab.ui.container.Menu
        WaveletTransformMenu_2          matlab.ui.container.Menu
        HiddenMarkovModelHMMMenu_2      matlab.ui.container.Menu
        IsolationForestMenu_2           matlab.ui.container.Menu
        RecurrentNeuralNetworksRNNsMenu_2  matlab.ui.container.Menu
        DynamicTimeWarpingDTWMenu_2     matlab.ui.container.Menu
        QuantileRegressionMenu_2        matlab.ui.container.Menu
        BayesianFilteringMenu_2         matlab.ui.container.Menu
        GapFillMenu                     matlab.ui.container.Menu
        LinearmodelsMenu                matlab.ui.container.Menu
        SimplelinearmodelMenu           matlab.ui.container.Menu
        MultivariatelinearmodelMenu     matlab.ui.container.Menu
        WeightedmultivariatelinearmodelMenu  matlab.ui.container.Menu
        NonlinearmodelsMenu             matlab.ui.container.Menu
        LSTMMenu                        matlab.ui.container.Menu
        BiLSTMMenu                      matlab.ui.container.Menu
        GaussianProcessesMenu           matlab.ui.container.Menu
        KernelRegressionMenu            matlab.ui.container.Menu
        NonlinearAutoRegressiveModelwitheXogenousInputsNARXMenu  matlab.ui.container.Menu
        SplineInterpolationMenu         matlab.ui.container.Menu
        LOESSLocallyWeightedScatterplotSmoothingMenu  matlab.ui.container.Menu
        ReverseDataMenu                 matlab.ui.container.Menu
        ReverseMenu                     matlab.ui.container.Menu
        UndoreverseMenu                 matlab.ui.container.Menu
        ViewMenu                        matlab.ui.container.Menu
        ChangeBackgroundColorMenu       matlab.ui.container.Menu
        FullScreenMenu_2                matlab.ui.container.Menu
        PlotMenu                        matlab.ui.container.Menu
        ExportMenu                      matlab.ui.container.Menu
        SaveasMenu                      matlab.ui.container.Menu
        FullScreenMenu                  matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        ManualMenu                      matlab.ui.container.Menu
        HomePageMenu                    matlab.ui.container.Menu
        GitHubMenu                      matlab.ui.container.Menu
        LatestversionMenu               matlab.ui.container.Menu
        GridLayout                      matlab.ui.container.GridLayout
        TabGroup                        matlab.ui.container.TabGroup
        ProjectConfigurationTab         matlab.ui.container.Tab
        GridLayout10                    matlab.ui.container.GridLayout
        OutputTextArea                  matlab.ui.control.TextArea
        DataPathButton                  matlab.ui.control.Button
        DataFilePathEditField           matlab.ui.control.EditField
        DefineDataFilePathLabel         matlab.ui.control.Label
        SaveAsProjectButton             matlab.ui.control.Button
        ReservedLabel                   matlab.ui.control.Label
        VPDTimehLabel                   matlab.ui.control.Label
        MaxSapFlowLabel                 matlab.ui.control.Label
        VPDThresholdLabel               matlab.ui.control.Label
        PARThresholdLabel               matlab.ui.control.Label
        MinSapFlowLabel                 matlab.ui.control.Label
        DeleteDataPointsLessThanLabel   matlab.ui.control.Label
        MaxChangePerIntervalLabel       matlab.ui.control.Label
        TimeStepIncrementsminLabel      matlab.ui.control.Label
        ProjectNameLabel                matlab.ui.control.Label
        DefineProjectFilePathLabel      matlab.ui.control.Label
        SaveProjectButton               matlab.ui.control.Button
        OpenProjectButton               matlab.ui.control.Button
        CreateProjectButton             matlab.ui.control.Button
        ProjectPathButton               matlab.ui.control.Button
        MaxSapFlowEditField             matlab.ui.control.NumericEditField
        VPDTimehEditField               matlab.ui.control.NumericEditField
        ReservedEditField               matlab.ui.control.NumericEditField
        MinSapFlowEditField             matlab.ui.control.NumericEditField
        PARThresholdEditField           matlab.ui.control.NumericEditField
        VPDThresholdEditField           matlab.ui.control.NumericEditField
        DeleteDataPointsLessThanEditField  matlab.ui.control.NumericEditField
        MaxChangePerIntervalEditField   matlab.ui.control.NumericEditField
        TimeStepIncrementsminEditField  matlab.ui.control.NumericEditField
        ProjectNameEditField            matlab.ui.control.EditField
        ProjectFilePathEditField        matlab.ui.control.EditField
        UITable4                        matlab.ui.control.Table
        Image                           matlab.ui.control.Image
        DataPreprocessingTab            matlab.ui.container.Tab
        GridLayout11                    matlab.ui.container.GridLayout
        BrushDataButton                 matlab.ui.control.Button
        SaveDataButton                  matlab.ui.control.Button
        YDropDown                       matlab.ui.control.DropDown
        YDropDownLabel                  matlab.ui.control.Label
        XDropDown                       matlab.ui.control.DropDown
        XDropDownLabel                  matlab.ui.control.Label
        UndoInterpolateButton           matlab.ui.control.Button
        UndoReverseButton               matlab.ui.control.Button
        ReversedataButton               matlab.ui.control.Button
        PlotDataButton                  matlab.ui.control.Button
        TextArea2                       matlab.ui.control.TextArea
        NextSensorButton                matlab.ui.control.Button
        PreviousSensorButton            matlab.ui.control.Button
        FinishEditingButton             matlab.ui.control.Button
        SetAnchorButton                 matlab.ui.control.Button
        DeleteAnchorButton              matlab.ui.control.Button
        InterpolateButton               matlab.ui.control.Button
        UndoDeletionButton              matlab.ui.control.Button
        DeletedTdataButton              matlab.ui.control.Button
        UIAxes3                         matlab.ui.control.UIAxes
        UIAxes3_2                       matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        ModelTrainingTab                matlab.ui.container.Tab
        GridLayout9                     matlab.ui.container.GridLayout
        VariableSelectionLabel          matlab.ui.control.Label
        ModelSelectionLabel             matlab.ui.control.Label
        Tree_2                          matlab.ui.container.Tree
        PredictingVariablesNode         matlab.ui.container.TreeNode
        TimeHoursandminutesNode         matlab.ui.container.TreeNode
        VPDNode                         matlab.ui.container.TreeNode
        TemperatureNode                 matlab.ui.container.TreeNode
        PARNode                         matlab.ui.container.TreeNode
        PrecipitationNode               matlab.ui.container.TreeNode
        LeafAreaIndexNode               matlab.ui.container.TreeNode
        ResponseVariablesNode           matlab.ui.container.TreeNode
        KNode                           matlab.ui.container.TreeNode
        FNode                           matlab.ui.container.TreeNode
        EditField2_4                    matlab.ui.control.NumericEditField
        EditField2_4Label               matlab.ui.control.Label
        ModelforpredictionDropDown      matlab.ui.control.DropDown
        ModelforpredictionDropDownLabel  matlab.ui.control.Label
        EditField2_3                    matlab.ui.control.NumericEditField
        EditField2_3Label               matlab.ui.control.Label
        EditField2_2                    matlab.ui.control.NumericEditField
        EditField2_2Label               matlab.ui.control.Label
        EditField2                      matlab.ui.control.NumericEditField
        EditField2Label                 matlab.ui.control.Label
        EditField                       matlab.ui.control.EditField
        EditFieldLabel                  matlab.ui.control.Label
        TextArea                        matlab.ui.control.TextArea
        TextAreaLabel                   matlab.ui.control.Label
        Tree                            matlab.ui.container.Tree
        LinearNode                      matlab.ui.container.TreeNode
        SimpleLinearModelNode           matlab.ui.container.TreeNode
        MultipleLinearModelNode         matlab.ui.container.TreeNode
        RecurrentNeuralNetworksNode     matlab.ui.container.TreeNode
        LSTMNode                        matlab.ui.container.TreeNode
        BiLSTMNode                      matlab.ui.container.TreeNode
        MakePredictionsButton           matlab.ui.control.StateButton
        CheckBox_3                      matlab.ui.control.CheckBox
        CheckBox_2                      matlab.ui.control.CheckBox
        ShowModelsButton                matlab.ui.control.StateButton
        StopTrainingButton              matlab.ui.control.StateButton
        StartTrainingButton             matlab.ui.control.StateButton
        CheckBox                        matlab.ui.control.CheckBox
        OutputPathButton                matlab.ui.control.Button
        InputPathButton                 matlab.ui.control.Button
        EditField_2                     matlab.ui.control.EditField
        GapFillingTab                   matlab.ui.container.Tab
        GridLayout4                     matlab.ui.container.GridLayout
        RawDataButton                   matlab.ui.control.Button
        ViewGapFilledDataButton         matlab.ui.control.Button
        UndoRepacementButton            matlab.ui.control.Button
        ReplaceGapFilledDataButton      matlab.ui.control.Button
        UITable2                        matlab.ui.control.Table
        UIAxes2                         matlab.ui.control.UIAxes
        CalculateWaterUseTab            matlab.ui.container.Tab
        GridLayout8                     matlab.ui.container.GridLayout
        PlotButton                      matlab.ui.control.Button
        EditField3_3                    matlab.ui.control.EditField
        CalculateButton                 matlab.ui.control.Button
        OutputButton                    matlab.ui.control.Button
        InputButton                     matlab.ui.control.Button
        EditField3_2                    matlab.ui.control.EditField
        EditField3                      matlab.ui.control.EditField
        UITable3                        matlab.ui.control.Table
        UIAxes6                         matlab.ui.control.UIAxes
        ContextMenu                     matlab.ui.container.ContextMenu
        SmoothdataMenu                  matlab.ui.container.Menu
        WaveletTransformMenu            matlab.ui.container.Menu
        BayesianFilteringMenu           matlab.ui.container.Menu
        DynamicTimeWarpingDTWMenu       matlab.ui.container.Menu
        KalmanFilterMenu                matlab.ui.container.Menu
        GaussianProcessRegressionMenu   matlab.ui.container.Menu
        HiddenMarkovModelHMMMenu        matlab.ui.container.Menu
        SavitzkyGolayFilterMenu         matlab.ui.container.Menu
        SeasonalDecompositionofTimeSeriesSTLMenu  matlab.ui.container.Menu
        ExponentialMovingAverageEMAMenu  matlab.ui.container.Menu
        SimpleMovingAverageSMAMenu      matlab.ui.container.Menu
        IsolationForestMenu             matlab.ui.container.Menu
        RecurrentNeuralNetworksRNNsMenu  matlab.ui.container.Menu
        QuantileRegressionMenu          matlab.ui.container.Menu
        EnableBrushingtoEditMenu        matlab.ui.container.Menu
        AutoSmoothbasedondataMenu       matlab.ui.container.Menu
        ShowlegendMenu                  matlab.ui.container.Menu
        ContextMenu2                    matlab.ui.container.ContextMenu
        ShowlegendMenu_2                matlab.ui.container.Menu
        ContextMenu3                    matlab.ui.container.ContextMenu
        ShowlegendMenu_3                matlab.ui.container.Menu
        ContextMenu4                    matlab.ui.container.ContextMenu
        ShowlegendMenu_4                matlab.ui.container.Menu
        ContextMenu5                    matlab.ui.container.ContextMenu
        CopyMenu                        matlab.ui.container.Menu
        ContextMenu6                    matlab.ui.container.ContextMenu
        ShowLegendMenu                  matlab.ui.container.Menu
    end

    
    properties (Access = public)
        OriginalXData        double
        OriginalYData        double
        CurrentXData         double
        CurrentYData         double
        RemovedPoints        logical
        SubtractedPoints     logical
        RemovedXData         double
        RemovedYData         double

    end

    properties (Access = public)
        DataFilePath char
        ProjectFilePath char
        ProjectName char
        TimeStepIncrement = 30
        MinSapFlow = 0
        MaxSapFlow = 1
        MaxChangePerInterval = 1.5
        DeleteDataPointsLessThan = 6
        PARThreshold = 50
        VPDTime = 24
        VPDThreshold = 2
        hPlot             matlab.graphics.chart.primitive.Line
        selectedData      matlab.graphics.chart.primitive.Line
        rect              matlab.graphics.primitive.Rectangle
        hOverviewPlot        matlab.graphics.chart.primitive.Line
        hZoomRectangle       matlab.graphics.primitive.Rectangle
        selectedMask      logical
        DeletionHistory = {}  % Initialize the deletion history stack
        SubtractionHistory = {}  % Initialize the subtraction history stack
        DeletionIndex = 0  % Initialize the deletion history index
        SubtractionIndex = 0  % Initialize the subtraction history index
        EnvMetaCols = {}; % Environmental and metadata columns
        SapFlowCols = {}; % Sap flow sensor data columns
        sapflowProcessor % Instance of SapflowProcessor class
        timestamp
        sapflow
        baselinePoints
        baselineValues

    end


%% Checking, filtering, and adding baselines %%
    methods (Access = public)



    end














%% Plot, preview, and edit data %%

    methods (Access = private)
        % Create backup of the data file if it doesn't exist
        function createBackup(app, filePath)
            [~, name, ext] = fileparts(filePath);
            backupFileName = [name, '_backup', ext];
            backupFilePath = fullfile(app.BackupFolderPath, backupFileName);

            % Check if backup folder exists, create if not
            if ~exist(app.BackupFolderPath, 'dir')
                mkdir(app.BackupFolderPath);
            end

            % Check if the backup file already exists
            if ~exist(backupFilePath, 'file')
                % Copy the file to the backup folder
                copyfile(filePath, backupFilePath);
                app.TextArea2.Value = [app.TextArea2.Value; {['Backup created at: ', backupFilePath]}];
                app.BackupCreated = true;
            else
                app.TextArea2.Value = [app.TextArea2.Value; {['Backup already exists at: ', backupFilePath]}];
            end
        end
    end

    methods (Access = public)
        function PreviousSensorButtonPushed(app, ~)
            try
                % Define the sap flow columns
                yCols = app.SapFlowCols; 
                % Get the current Y column selection
                currentY = app.YDropDown.Value;
                % Find the index of the current selection
                currentIndex = find(strcmp(yCols, currentY), 1);
    
                % Check if the current index is valid
                if isempty(currentIndex)
                    nextIndex = 1; % Default to the first sensor if current index is invalid
                else
                    % Move to the previous sensor, with wrapping
                    if currentIndex == 1
                        nextIndex = length(yCols); % Wrap around to the last column
                    else
                        nextIndex = currentIndex - 1;
                    end
                end
    
                % Update the Y dropdown selection
                app.YDropDown.Value = yCols{nextIndex};
    
                % Replot the data with the new Y selection
                app.plotData(false); % Maintain current limits
            catch ME
                % Handle errors and provide feedback
                errorMessage = sprintf('Error in PreviousSensorButtonPushed: %s', ME.message);
                disp(errorMessage);
                msgbox(errorMessage, 'Error', 'error');
            end
        end
    
        function NextSensorButtonPushed(app, ~)
            try
                % Define the sap flow columns
                yCols = app.SapFlowCols;
                % Get the current Y column selection
                currentY = app.YDropDown.Value;
                % Find the index of the current selection
                currentIndex = find(strcmp(yCols, currentY), 1);
    
                % Check if the current index is valid
                if isempty(currentIndex)
                    previousIndex = 1; % Default to the first sensor if current index is invalid
                else
                    % Move to the next sensor, with wrapping
                    if currentIndex == length(yCols)
                        previousIndex = 1; % Wrap around to the first column
                    else
                        previousIndex = currentIndex + 1;
                    end
                end
    
                % Update the Y dropdown selection
                app.YDropDown.Value = yCols{previousIndex};
    
                % Replot the data with the new Y selection
                app.plotData(false); % Maintain current limits
            catch ME
                % Handle errors and provide feedback
                errorMessage = sprintf('Error in NextSensorButtonPushed: %s', ME.message);
                disp(errorMessage);
                msgbox(errorMessage, 'Error', 'error');
            end
        end
    
        % Include this function to connect buttons with callbacks
        function setButtonCallbacks(app)
            try
                % Assuming you have buttons defined as app.PreviousSensorButton and app.NextSensorButton
                app.PreviousSensorButton.ButtonPushedFcn = @app.PreviousSensorButtonPushed;
                app.NextSensorButton.ButtonPushedFcn = @app.NextSensorButtonPushed;
            catch ME
                % Handle errors and provide feedback
                errorMessage = sprintf('Error in setButtonCallbacks: %s', ME.message);
                disp(errorMessage);
                msgbox(errorMessage, 'Error', 'error');
            end
        end
    end

    methods (Access = public)

        function saveToDeletionHistory(app)
            app.DeletionIndex = app.DeletionIndex + 1;
            app.DeletionHistory{app.DeletionIndex} = app.UITable4.Data;
            % Trim the history if needed
            if length(app.DeletionHistory) > app.DeletionIndex
                app.DeletionHistory(app.DeletionIndex+1:end) = [];
            end
        end
        
        function saveToSubtractionHistory(app)
            app.SubtractionIndex = app.SubtractionIndex + 1;
            app.SubtractionHistory{app.SubtractionIndex} = app.UITable4.Data;
            % Trim the history if needed
            if length(app.SubtractionHistory) > app.SubtractionIndex
                app.SubtractionHistory(app.SubtractionIndex+1:end) = [];
            end
        end

        function deleteSelectedPoints(app)
            % Save current state to deletion history
            app.saveToDeletionHistory();
    
            % Get the plot handle
            plotHandle = app.hPlot;
    
            % Check if the plot handle is valid
            if ~isvalid(plotHandle)
                msgbox('Plot handle is invalid', 'Error', 'error');
                return;
            end
    
            % Get the BrushData from the plot
            brushData = get(plotHandle, 'BrushData');
    
            % Check if there are any brushed data points
            if isempty(brushData) || all(brushData == 0)
                msgbox('No points are brushed for deletion', 'Warning', 'warn');
                return;
            end
    
            % Find the indices of selected (brushed) points
            selectedPointsIndex = find(brushData);
    
            % Get the data from UITable4
            data = app.UITable4.Data;
            yCol = app.YDropDown.Value;
            xCol = app.XDropDown.Value;
    
            % Clone the data to avoid modifying the original table
            modifiedData = data;
    
            % Get the current Y data from the selected column
            yData = modifiedData.(yCol);
            xData = modifiedData.(xCol);
    
            % Replace selected points with NaN
            yData = replaceSelectedPoints(yData, selectedPointsIndex);
    
            % Convert cell data to numeric for plotting if necessary
            if iscell(xData)
                xData = cellfun(@convertToDouble, xData);
            end
            if iscell(yData)
                yData = cellfun(@convertToDouble, yData);
            end
    
            % Update only the Y column in the table
            modifiedData.(yCol) = yData;
            modifiedData.(xCol) = xData;
    
            % Update the plot with the new data
            if isdatetime(xData)
                set(plotHandle, 'XData', datenum(xData)); % Convert datetime to datenum for plotting
            else
                set(plotHandle, 'XData', xData); % Keep X data unchanged
            end
    
            if isdatetime(yData)
                set(plotHandle, 'YData', datenum(yData)); % Convert datetime to datenum for plotting
            else
                set(plotHandle, 'YData', yData);
            end
    
            % Refresh the plot to display the changes
            drawnow;
    
            % Update the modified data in UITable4
            app.UITable4.Data = modifiedData;
    
            % Clear the BrushData to reset the selection
            set(plotHandle, 'BrushData', []);
    
            % Nested function to handle different data types
            function data = replaceSelectedPoints(data, selectedPointsIndex)
                if isnumeric(data)
                    data(selectedPointsIndex) = NaN;
                elseif isdatetime(data)
                    % No changes to X data
                elseif iscell(data)
                    for i = 1:length(selectedPointsIndex)
                        idx = selectedPointsIndex(i);
                        if ischar(data{idx}) || isstring(data{idx})
                            data{idx} = ''; % Empty string for text cells
                        elseif isnumeric(data{idx})
                            data{idx} = NaN; % NaN for numeric cells
                        else
                            data{idx} = NaN; % Default to NaN for unknown cell types
                        end
                    end
                elseif iscategorical(data)
                    data(selectedPointsIndex) = '<undefined>';
                else
                    data(selectedPointsIndex) = NaN; % Default case for other types
                end
            end
    
            % Function to convert cell elements to double, replacing non-numeric with NaN
            function value = convertToDouble(cellValue)
                if isnumeric(cellValue)
                    value = cellValue;
                elseif ischar(cellValue) || isstring(cellValue)
                    numValue = str2double(cellValue);
                    if isnan(numValue)
                        value = NaN; % Non-numeric strings converted to NaN
                    else
                        value = numValue;
                    end
                else
                    value = NaN; % Convert non-numeric, non-string to NaN
                end
            end
        end
    
        function inverseSelectedPoints(app)
            % Save current state to subtraction history
            app.saveToSubtractionHistory();
    
            % Get the plot handle
            plotHandle = app.hPlot;
    
            % Check if the plot handle is valid
            if ~isvalid(plotHandle)
                msgbox('Plot handle is invalid', 'Error', 'error');
                return;
            end
    
            % Get the BrushData from the plot
            brushData = get(plotHandle, 'BrushData');
    
            % Check if there are any brushed data points
            if isempty(brushData) || all(brushData == 0)
                msgbox('No points are brushed for inversion', 'Warning', 'warn');
                return;
            end
    
            % Find the indices of selected (brushed) points
            selectedPointsIndex = find(brushData);
    
            % Get the data from UITable4
            data = app.UITable4.Data;
            yCol = app.YDropDown.Value;
    
            % Get the current Y data from the selected column
            yData = data.(yCol);
    
            % Perform 1 - selected data
            yData = invertSelectedPoints(yData, selectedPointsIndex);
    
            % Update the specific column in the table
            data.(yCol) = yData;
            app.UITable4.Data = data;
    
            % Clear the BrushData to reset the selection
            set(plotHandle, 'BrushData', []);
    
            app.plotData(true);
    
            % Nested function to handle inversion of selected points
            function data = invertSelectedPoints(data, selectedPointsIndex)
                if isnumeric(data)
                    data(selectedPointsIndex) = 1 - data(selectedPointsIndex);
                elseif iscell(data)
                    for i = 1:length(selectedPointsIndex)
                        idx = selectedPointsIndex(i);
                        if isnumeric(data{idx})
                            data{idx} = 1 - data{idx};
                        else
                            data{idx} = NaN; % Convert non-numeric cells to NaN
                        end
                    end
                else
                    msgbox('Data type not supported for inversion', 'Error', 'error');
                end
            end
        end

        function undoLastDeletion(app)
            if app.DeletionIndex > 0
                app.UITable4.Data = app.DeletionHistory{app.DeletionIndex};
                app.DeletionIndex = app.DeletionIndex - 1;
                app.plotData(true); % Update plot to reflect changes
            else
                msgbox('No deletion actions to undo', 'Info', 'help');
            end
        end

        function undoLastSubtraction(app)
            if app.SubtractionIndex > 0
                app.UITable4.Data = app.SubtractionHistory{app.SubtractionIndex};
                app.SubtractionIndex = app.SubtractionIndex - 1;
                app.plotData(true); % Update plot to reflect changes
            else
                msgbox('No subtraction actions to undo', 'Info', 'help');
            end
        end

        function UndoDeletionButtonPushed(app, ~)
            app.undoLastDeletion();
        end

        function UndoSubtractionButtonPushed(app, ~)
            app.undoLastSubtraction();
        end       
        
    end


    methods (Access = public)
        
        function enableRectangleDrawing(app)
            % Enable the user to draw a rectangle on UIAxes3
            hRect = drawrectangle(app.UIAxes3, 'Color', 'r');
            
            % Add a listener to handle the rectangle's position
            addlistener(hRect, 'ROIMoved', @(src, evt) app.updateAxesLimits(hRect));
        end

        function previewData(app)
            try
                [~, ~, ext] = fileparts(app.DataFilePath);
                if strcmp(ext, '.csv') || strcmp(ext, '.xlsx')
                    opts = detectImportOptions(app.DataFilePath, 'VariableNamingRule', 'preserve');
                    data = readtable(app.DataFilePath, opts);
                    
                    % Identify columns
                    app.identifyColumns(data);
                    
                    % Filter data
                    filteredData = app.filterData(data);
                    
                    % Create a temporary copy of filtered data for preview and editing
                    tempFilteredData = filteredData;
                    
                    % Update UITable4 with the filtered data
                    app.UITable4.Data = tempFilteredData;
                    app.UITable4.ColumnName = tempFilteredData.Properties.VariableNames;
                    
                    % Populate dropdown menus with data columns from UITable4
                    app.populateDropdowns();
                    
                    % Plot initial data
                    app.plotData();
                else
                    error('Unsupported file type');
                end
            catch ME
                % Handle error if the file cannot be read as a table
                msgbox(sprintf('Error reading the data file: %s', ME.message), 'Error', 'error');
                app.TextArea2.Value = [app.TextArea2.Value; {['Error reading the data file: ', ME.message]}];
            end
        end
        

        function identifyColumns(app, data)
            colNames = data.Properties.VariableNames;
        
            % Default known environmental/meta data columns
            defaultEnvMetaCols = {'TIMESTAMP', 'DOY', 'Year', 'DayofYear', 'TimeofDay', 'BattV_Avg', ...
                                  'AirTC_Avg', 'RH', 'Rain_mm_Tot', 'PAR_Den_Avg', 'VPD'};
        
            % Find exact matches for known environmental/meta data columns
            envMetaCols = colNames(ismember(colNames, defaultEnvMetaCols));
        
            % Prompt user for additional identification
            additionalCols = setdiff(colNames, envMetaCols);
            if ~isempty(additionalCols)
                % Use a cell array for the prompt string to handle multi-line prompts
                promptStr = {'Select additional environmental', '/meta data columns:'};
                [selection, ok] = listdlg('ListString', additionalCols, ...
                                          'PromptString', promptStr, ...
                                          'SelectionMode', 'multiple');
                if ok
                    envMetaCols = [envMetaCols, additionalCols(selection)];
                end
            end
        
            % Automatically identify potential environmental/meta data columns
            potentialEnvMetaCols = colNames(contains(colNames, {'Timestamp', 'Time', 'PAR', 'AirT', 'Rain', 'RH', 'VPD'}, 'IgnoreCase', true));
            envMetaCols = unique([envMetaCols, potentialEnvMetaCols]);
        
            % Store identified columns in app properties
            app.EnvMetaCols = envMetaCols;
            app.SapFlowCols = setdiff(colNames, envMetaCols);
        end


        function filteredData = filterData(app, data)
            envMetaCols = app.EnvMetaCols;
            sapFlowCols = app.SapFlowCols;
            
            % Create a waitbar to show progress
            progressBar = waitbar(0, 'Filtering data...');
            totalSteps = 5;  % Define the total number of steps in your filtering process
            
            % Step 1: Extract sap flow data
            sapFlowData = data(:, sapFlowCols);
            waitbar(1/totalSteps, progressBar, 'Applying thresholds...');
    
            % Step 2: Apply thresholds
            filteredSapFlowData = app.applyThresholds(sapFlowData);
            waitbar(2/totalSteps, progressBar, 'Removing short sequences...');
    
            % Step 3: Remove short sequences
            filteredSapFlowData = app.removeShortSequences(filteredSapFlowData, app.DeleteDataPointsLessThan);
            waitbar(3/totalSteps, progressBar, 'Merging environmental and sap flow data...');
    
            % Step 4: Combine filtered data with environmental/meta data
            filteredData = [data(:, envMetaCols), filteredSapFlowData];
            waitbar(4/totalSteps, progressBar, 'Filtering data complete...');
    
            % Close the progress bar
            waitbar(5/totalSteps, progressBar, 'Filtering completed!');
            close(progressBar);
        end
        
        function filteredData = applyThresholds(app, data)
            colNames = data.Properties.VariableNames;
            totalCols = length(colNames);
    
            % Create a waitbar to show progress
            progressBar = waitbar(0, 'Applying thresholds...');
            
            for i = 1:totalCols
                colData = data.(colNames{i});
                
                % Step 1: Apply Min and Max Sap Flow thresholds
                if any(strcmpi(colNames{i}, app.SapFlowCols))
                    colData = app.applyMinMaxThreshold(colData, app.MinSapFlow, app.MaxSapFlow);
                end
                
                % Step 2: Apply Max Change Per Interval
                if any(strcmpi(colNames{i}, app.SapFlowCols))
                    colData = app.applyMaxChangePerInterval(colData, app.MaxChangePerInterval);
                end
                
                % Step 3: Apply PAR Threshold
                if any(strcmpi(colNames{i}, 'PAR_Den_Avg'))
                    colData = app.applyThreshold(colData, app.PARThreshold);
                end
                
                % Step 4: Apply VPD Threshold
                if any(strcmpi(colNames{i}, 'VPD'))
                    colData = app.applyThreshold(colData, app.VPDThreshold);
                end
                
                data.(colNames{i}) = colData;
    
                % Update the progress bar
                waitbar(i / totalCols, progressBar, sprintf('Applying thresholds... (%d/%d)', i, totalCols));
            end
            
            filteredData = data;
            close(progressBar);
        end
    
        function colData = applyMinMaxThreshold(~, colData, minVal, maxVal)
            colData = SapFlower.convertToDouble(colData); % Convert cell data to numeric
            
            % Ensure logical operations are element-wise
            colData(colData < minVal | colData > maxVal) = NaN;
        end
    
        function colData = applyMaxChangePerInterval(~, colData, maxChange)
            colData = SapFlower.convertToDouble(colData); % Convert cell data to numeric
            valueDiff = abs(diff(colData));
            valueDiff = [0; valueDiff]; % Adding zero for the first element
            
            % Ensure logical operations are element-wise
            colData(valueDiff > maxChange) = NaN;
        end
    
        function colData = applyThreshold(~, colData, threshold)
            colData = SapFlower.convertToDouble(colData); % Convert cell data to numeric
            
            % Ensure logical operations are element-wise
            colData(colData < threshold) = NaN;
        end
    
        function data = removeShortSequences(~, data, minLength)
            colNames = data.Properties.VariableNames;
            totalCols = length(colNames);
            
            % Create a waitbar to show progress
            progressBar = waitbar(0, 'Removing short sequences...');
            
            for i = 1:totalCols
                colData = data.(colNames{i});
                isValid = ~isnan(colData);
                validSegments = regionprops(isValid, 'PixelIdxList');
                
                for j = 1:length(validSegments)
                    if length(validSegments(j).PixelIdxList) < minLength
                        colData(validSegments(j).PixelIdxList) = NaN;
                    end
                end
                
                data.(colNames{i}) = colData;
    
                % Update the progress bar
                waitbar(i / totalCols, progressBar, sprintf('Removing short sequences... (%d/%d)', i, totalCols));
            end
    
            close(progressBar);
        end


        % Load new data file and create a backup if necessary
        function loadNewDataFile(app, filePath)
            % Clear existing history and selections
            app.History = {};
            app.HistoryIndex = 0;
            app.selectedMask = [];
            app.BackupCreated = false; % Reset backup status

            % Create a backup of the original data file
            app.createBackup(filePath);

            % Load the new data
            try
                [~, ~, ext] = fileparts(filePath);
                switch ext
                    case '.csv'
                        data = readtable(filePath);
                    case '.xlsx'
                        data = readtable(filePath, 'Sheet', 1);
                    otherwise
                        error('Unsupported file type');
                end

                % Update UITable4 with the new data
                app.UITable4.Data = data;
                app.UITable4.ColumnName = data.Properties.VariableNames;

                % Update dropdown menus
                app.populateDropdowns();

                % Plot the new data
                app.plotData(false);

            catch ME
                errorMessage = sprintf('Error loading data file: %s', ME.message);
                disp(errorMessage);
                msgbox(errorMessage, 'Error', 'error');
                app.TextArea2.Value = [app.TextArea2.Value; {errorMessage}];
            end
        end
    
        % Function to populate dropdown menus with data columns
        function populateDropdowns(app)
            if ~isempty(app.UITable4.Data)
                columnNames = app.UITable4.ColumnName;
                app.XDropDown.Items = columnNames;
                app.YDropDown.Items = columnNames;
            end
        end


        function plotData(app, maintainLimits)
            if nargin < 2
                maintainLimits = false; % Default to not maintaining limits if not specified
            end
        
            if isempty(app.XDropDown.Items) || isempty(app.YDropDown.Items)
                return; % No data to plot
            end
        
            try
                % Get selected X and Y data
                xDataColumn = app.XDropDown.Value;
                yDataColumn = app.YDropDown.Value;
        
                % Get data from UITable4
                data = app.UITable4.Data;
        
                % Validate selected columns
                if ~any(strcmp(app.UITable4.ColumnName, xDataColumn)) || ~any(strcmp(app.UITable4.ColumnName, yDataColumn))
                    error('Selected columns do not exist in the data.');
                end
        
                xData = data.(xDataColumn);
                yData = data.(yDataColumn);
        
                % Convert and validate data types for X
                xData = SapFlower.convertToNumeric(xData);
                if isempty(xData)
                    error('X data is neither numeric nor date type.');
                end
        
                % Convert and validate data types for Y
                yData = SapFlower.convertToNumeric(yData);
                if isempty(yData)
                    error('Y data is neither numeric nor date type.');
                end
        
                % Add NaNs at gaps and at the end
                [xData, yData] = SapFlower.addNaNsForGaps(xData, yData);
        
                % Save current axis limits if required
                if maintainLimits
                    currentXLim = app.UIAxes4.XLim;
                    currentYLim = app.UIAxes4.YLim;
                end
        
                % Plot the selected data on UIAxes4
                if isvalid(app.hPlot)
                    delete(app.hPlot);
                end
                hold(app.UIAxes4, 'on');
                app.hPlot = plot(app.UIAxes4, xData, yData, '-b');
                hold(app.UIAxes4, 'off');
        
                % Set axes titles for UIAxes4
                app.UIAxes4.XLabel.String = xDataColumn;
                app.UIAxes4.YLabel.String = yDataColumn;
        
                % Format X-axis as date if data was date type
                if isdatetime(data.(xDataColumn)) || ischar(data.(xDataColumn)) || isstring(data.(xDataColumn)) || iscategorical(data.(xDataColumn))
                    datetick(app.UIAxes4, 'x', 'yyyy-mm-dd');
                end
        
                % Adjust axis limits
                if maintainLimits
                    % Restore current axis limits
                    app.UIAxes4.XLim = currentXLim;
                    app.UIAxes4.YLim = currentYLim;
                else
                    % Set limits to fit data
                    app.UIAxes4.XLim = [min(xData, [], 'omitnan'), max(xData, [], 'omitnan')];
                    app.UIAxes4.YLim = [min(yData, [], 'omitnan'), max(yData, [], 'omitnan')];
                end
        
                % Plot the selected data on UIAxes3 for an overview
                if isvalid(app.hOverviewPlot)
                    delete(app.hOverviewPlot);
                end
                hold(app.UIAxes3, 'on');
                app.hOverviewPlot = plot(app.UIAxes3, xData, yData, '-g');
                hold(app.UIAxes3, 'off');
        
                % Set axes titles for UIAxes3
                app.UIAxes3.XLabel.String = ['Overview: ', xDataColumn];
                app.UIAxes3.YLabel.String = ['Overview: ', yDataColumn];
        
                % Format X-axis as date if data was date type
                if isdatetime(data.(xDataColumn)) || ischar(data.(xDataColumn)) || isstring(data.(xDataColumn)) || iscategorical(data.(xDataColumn))
                    datetick(app.UIAxes3, 'x', 'yyyy-mm-dd');
                end
        
                % Update zoom rectangle to match UIAxes4 limits
                app.updateZoomRectangle();
        
                % Append success message to TextArea2
                app.TextArea2.Value = [app.TextArea2.Value; {'Data plotted successfully.'}];
        
            catch ME
                % Append error message to TextArea2
                app.TextArea2.Value = [app.TextArea2.Value; {['Error plotting data: ', ME.message]}];
            end
        end


        function DeletedTdataButtonPushed(app, ~)
            app.deleteSelectedPoints();
        end


        function ReversedataButtonPushed(app, ~)
            app.inverseSelectedPoints();
        end


        % Method to update the visual representation of the zoom area in UIAxes3
        function updateZoomRectangle(app)
            % Ensure UIAxes4 is valid before proceeding
            if isvalid(app.UIAxes4)
                xLimits = app.UIAxes4.XLim;
                yLimits = app.UIAxes4.YLim;

                % If the rectangle already exists, delete it
                if isvalid(app.hZoomRectangle)
                    delete(app.hZoomRectangle);
                end

                % Draw the rectangle in UIAxes3 to indicate the zoomed area
                hold(app.UIAxes3, 'on');
                app.hZoomRectangle = rectangle(app.UIAxes3, ...
                    'Position', [xLimits(1), yLimits(1), diff(xLimits), diff(yLimits)], ...
                    'EdgeColor', 'r', 'LineStyle', '-', 'LineWidth', 1, 'FaceAlpha', 0.1);
                hold(app.UIAxes3, 'off');
            else
                disp('UIAxes4 is not valid, skipping updateZoomRectangle.');
            end
        end


        function updateAxesLimits(app, hRect)
            % Get the position of the drawn rectangle
            rectPos = hRect.Position;
            
            % Extract the limits from the rectangle position
            xMin = rectPos(1);
            xMax = xMin + rectPos(3);
            yMin = rectPos(2);
            yMax = yMin + rectPos(4);
            
            % Set the new limits for UIAxes4
            app.UIAxes4.XLim = [xMin, xMax];
            app.UIAxes4.YLim = [yMin, yMax];
            
            % Update zoom rectangle to reflect new limits
            app.updateZoomRectangle();
        end



        function restoreOriginalXData(app)
            % Restore the original X data from the deletion history
            if ~isempty(app.DeletionHistory)
                latestData = app.DeletionHistory{end}; % Get the latest unmodified data
                xCol = app.XDropDown.Value;
                currentData = app.UITable4.Data;
    
                % Restore the X data if it has been changed to NaT or other invalid state
                if isdatetime(currentData.(xCol))
                    invalidIdx = isnat(currentData.(xCol));
                else
                    invalidIdx = isnan(currentData.(xCol));
                end
    
                currentData.(xCol)(invalidIdx) = latestData.(xCol)(invalidIdx); % Restore X values
                app.UITable4.Data = currentData;
            end
        end


        function saveEditedData(app)
            % Start a timer to measure the duration of the save operation
            tic;
    
            % Restore original X data before saving
            app.restoreOriginalXData();
    
            % Get the modified data from UITable4
            modifiedData = app.UITable4.Data;
            filePath = app.DataFilePath;
            [~, ~, ext] = fileparts(filePath);
    
            % Identify the modified Y column
            yCol = app.YDropDown.Value;
    
            try
                % Check the file format and save the necessary columns
                switch ext
                    case '.csv'
                        saveColumnToCSV(app, filePath, yCol, modifiedData);
                    case '.xlsx'
                        saveColumnToXLSX(app, filePath, yCol, modifiedData);
                    case '.mat'
                        saveColumnToMAT(app, filePath, yCol, modifiedData);
                    otherwise
                        error('Unsupported file format');
                end
    
                % Measure and display the elapsed time
                elapsedTime = toc;
                msgbox(['Edited data saved to ', filePath, ' in ', num2str(elapsedTime), ' seconds.'], 'Success');
            catch ME
                % Display error message
                msgbox(['Error saving the data: ', ME.message], 'Error', 'error');
            end
        end
    
        % Function to save modified column to CSV
        function saveColumnToCSV(~,filePath, yCol, modifiedData)
            % Read the original data
            opts = detectImportOptions(filePath, 'VariableNamingRule', 'preserve');
            originalData = readtable(filePath, opts);
    
            % Update the specific column
            originalData.(yCol) = modifiedData.(yCol);
    
            % Write the updated table to the CSV file
            writetable(originalData, filePath, 'WriteVariableNames', true);
        end
    
        % Function to save modified column to XLSX
        function saveColumnToXLSX(~,filePath, yCol, modifiedData)
            % Read the original data
            [~, sheets] = xlsfinfo(filePath);
            sheetName = sheets{1};  % Use the first sheet
            originalData = readtable(filePath, 'Sheet', sheetName);
    
            % Update the specific column
            originalData.(yCol) = modifiedData.(yCol);
    
            % Write the updated table to the XLSX file
            writetable(originalData, filePath, 'WriteVariableNames', true, 'Sheet', sheetName);
        end
    
        % Function to save modified column to MAT
        function saveColumnToMAT(~,filePath, yCol, modifiedData)
            % Load original data from MAT file
            dataStruct = load(filePath);
    
            % Update the specific column
            dataStruct.(yCol) = modifiedData.(yCol);
    
            % Save the updated data back to the MAT file
            save(filePath, '-struct', 'dataStruct', '-v7.3');  % Use '-v7.3' for large files
        end

    
        function SaveDataButtonPushed(app, ~)
            app.saveEditedData();
        end

    end


    methods (Static)
        function numericValue = convertToDouble(value)
            if iscell(value)
                numericValue = cellfun(@(x) str2double(x), value, 'UniformOutput', false);
                numericValue = cell2mat(numericValue);
            elseif isnumeric(value)
                numericValue = value;
            else
                numericValue = NaN;
            end
        end
        
        function numericData = convertToNumeric(data)
            if iscategorical(data)
                data = cellstr(data);
            elseif isdatetime(data)
                data = datenum(data);
            end
            
            if iscell(data)
                numericData = NaN(size(data));
                for i = 1:length(data)
                    if ischar(data{i}) || isstring(data{i})
                        num = str2double(data{i});
                    else
                        num = data{i};
                    end
                    if isnan(num)
                        numericData(i) = NaN;
                    else
                        numericData(i) = num;
                    end
                end
            elseif isnumeric(data)
                numericData = data;
            else
                numericData = [];
            end
            
            if all(isnan(numericData))
                numericData = [];
            end
        end
        
        function [xDataWithNaNs, yDataWithNaNs] = addNaNsForGaps(xData, yData)
            n = length(xData);
            
            xDataWithNaNs = nan(1, n + 1);
            yDataWithNaNs = nan(1, n + 1);
            
            idx = 1;
            
            for i = 1:n
                if isnan(xData(i)) || isnan(yData(i))
                    xDataWithNaNs(idx) = NaN;
                    yDataWithNaNs(idx) = NaN;
                else
                    xDataWithNaNs(idx) = xData(i);
                    yDataWithNaNs(idx) = yData(i);
                end
                idx = idx + 1;
            end
            
            if n > 1
                xDataWithNaNs(idx) = xData(end) + (xData(end) - xData(end-1));
                yDataWithNaNs(idx) = NaN;
            end
            
            xDataWithNaNs = xDataWithNaNs(1:idx);
            yDataWithNaNs = yDataWithNaNs(1:idx);
        end
    end




    methods (Access = public)
        function logDebugInfo(app)
            % Log status of UIAxes4
            if isvalid(app.UIAxes4)
                disp('UIAxes4 is valid.');
                disp(['XData size: ', num2str(size(app.hPlot.XData))]);
                disp(['YData size: ', num2str(size(app.hPlot.YData))]);
            else
                disp('UIAxes4 is not valid.');
            end
    
            % Log state of hPlot
            if isvalid(app.hPlot)
                disp('hPlot is valid.');
                disp(['XData: ', num2str(app.hPlot.XData)]);
                disp(['YData: ', num2str(app.hPlot.YData)]);
            else
                disp('hPlot is not valid.');
            end
    
            % Log contents of UITable4
            if ~isempty(app.UITable4)
                disp('UITable4 data:');
                disp(app.UITable4.Data);
            else
                disp('UITable4 is not present.');
            end
    
            % Log the state of other properties if necessary
            disp(['CurrentXData: ', num2str(app.CurrentXData)]);
            disp(['CurrentYData: ', num2str(app.CurrentYData)]);
            disp(['DataFilePath: ', app.DataFilePath]);
        end

        function saveProject(app, ~, ~)
            [file, path] = uiputfile('*.html', 'Save Project As');
            if isequal(file, 0)
                app.TextArea2.Value = [app.TextArea2.Value; {'User selected Cancel'}];
            else
                projectData = struct();
                projectData.DataFilePath = app.DataFilePath;
                projectData.CurrentXData = app.hPlot.XData;
                projectData.CurrentYData = app.hPlot.YData;
                projectData.History = app.History;
                projectData.HistoryIndex = app.HistoryIndex;
                projectData.ProjectName = app.ProjectName;
                projectData.ProjectDescription = app.ProjectDescription;
                projectData.TimeStepIncrement = app.TimeStepIncrement;
                projectData.MinSapFlow = app.MinSapFlow;
                projectData.MaxSapFlow = app.MaxSapFlow;
                projectData.MaxChangePerInterval = app.MaxChangePerInterval;
                projectData.DeleteDataPointsLessThan = app.DeleteDataPointsLessThan;
                projectData.PARThreshold = app.PARThreshold;
                projectData.VPDTime = app.VPDTime;
                projectData.VPDThreshold = app.VPDThreshold;
                projectData.EditedData = app.UITable4.Data; % Include edited data
                
                % Include the deletion and subtraction histories
                projectData.DeletionHistory = app.DeletionHistory;
                projectData.DeletionIndex = app.DeletionIndex;
                projectData.SubtractionHistory = app.SubtractionHistory;
                projectData.SubtractionIndex = app.SubtractionIndex;
                
                jsonData = jsonencode(projectData);
                fid = fopen(fullfile(path, file), 'w');
                if fid == -1
                    error('Cannot create HTML file');
                end
                fprintf(fid, '<html><body><pre>%s</pre></body></html>', jsonData);
                fclose(fid);
                
                app.TextArea2.Value = [app.TextArea2.Value; {['Project saved to: ', fullfile(path, file)]}];
            end
        end

        % Function to load the project including edited data
        function loadProject2(app, projectFilePath)
            % Check if the project file exists
            if ~isfile(projectFilePath)
                app.TextArea2.Value = [app.TextArea2.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                return;
            end
    
            % Read JSON data from HTML file
            fid = fopen(projectFilePath, 'r');
            if fid == -1
                app.TextArea2.Value = [app.TextArea2.Value; {'Cannot open HTML file'}];
                return;
            end
            raw = fread(fid, inf);
            str = char(raw');
            fclose(fid);
    
            % Extract JSON data from HTML file
            jsonData = extractBetween(str, '<pre>', '</pre>');
            projectData = jsondecode(jsonData{1});
    
            % Check if all required fields are present in the project data
            requiredFields = {'DataFilePath', 'ProjectFilePath', 'TimeStepIncrement', 'MinSapFlow', 'MaxSapFlow', 'MaxChangePerInterval', 'DeleteDataPointsLessThan', 'PARThreshold', 'VPDTime', 'VPDThreshold', 'EditedData'};
            for i = 1:length(requiredFields)
                if ~isfield(projectData, requiredFields{i})
                    app.TextArea2.Value = [app.TextArea2.Value; {['Missing field ', requiredFields{i}, ' in project data']}];
                    return;
                end
            end
    
            % Restore project data
            app.DataFilePath = projectData.DataFilePath;
            app.ProjectFilePath = projectData.ProjectFilePath;
            app.TimeStepIncrement = projectData.TimeStepIncrement;
            app.MinSapFlow = projectData.MinSapFlow;
            app.MaxSapFlow = projectData.MaxSapFlow;
            app.MaxChangePerInterval = projectData.MaxChangePerInterval;
            app.DeleteDataPointsLessThan = projectData.DeleteDataPointsLessThan;
            app.PARThreshold = projectData.PARThreshold;
            app.VPDTime = projectData.VPDTime;
            app.VPDThreshold = projectData.VPDThreshold;
    
            % Restore edited data to the table
            app.UITable4.Data = projectData.EditedData;
    
            % Update UI fields with loaded data
            app.DataFilePathEditField.Value = app.DataFilePath;
            app.ProjectFilePathEditField.Value = app.ProjectFilePath;
            app.TimeStepIncrementsminEditField.Value = app.TimeStepIncrement;
            app.MinSapFlowEditField.Value = app.MinSapFlow;
            app.MaxSapFlowEditField.Value = app.MaxSapFlow;
            app.MaxChangePerIntervalEditField.Value = app.MaxChangePerInterval;
            app.DeleteDataPointsLessThanEditField.Value = app.DeleteDataPointsLessThan;
            app.PARThresholdEditField.Value = app.PARThreshold;
            app.VPDTimehEditField.Value = app.VPDTime;
            app.VPDThresholdEditField.Value = app.VPDThreshold;
    
            % Check if ProjectName is defined in the project
            if isfield(projectData, 'ProjectName')
                app.ProjectName = projectData.ProjectName;
            else
                [~, name, ~] = fileparts(app.ProjectFilePath);
                app.ProjectName = name;
            end
            app.ProjectNameEditField.Value = app.ProjectName;
    
            % Plot the loaded data
            app.plotData();
    
            app.TextArea2.Value = [app.TextArea2.Value; {['Project loaded from: ', app.ProjectFilePath]}];
        end


        % Callback for Plot Data Button
        function PlotDataButtonPushed(app, ~)
            app.plotData();
        end   
    end

%% Project Page %%
    methods (Access = public)

        function DataPathButtonPushed(app, ~)
            [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
            if isequal(file, 0)
                % User canceled the action
                return;
            else
                app.DataFilePath = fullfile(path, file);
                app.DataFilePathEditField.Value = app.DataFilePath;
            end
            
            % Load data from the file and preview it in the UITable
            previewData(app);
        end


        % Callback for Project Path button
        function ProjectPathButtonPushed(app, ~)
            [file, path] = uigetfile('*.html', 'Select Project File');
            if isequal(file, 0)
                % User canceled the action
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
                app.ProjectFilePathEditField.Value = app.ProjectFilePath;
                
                % Extract the file name without extension to update ProjectName
                [~, fileName, ~] = fileparts(file);
                app.ProjectNameEditField.Value = fileName;
            end
        end
    

        function SaveAsProjectSButtonPushed(app, ~, ~)
            % Check if DataFilePath is defined
            if isempty(app.DataFilePathEditField.Value)
                % Prompt the user to select the data path
                [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User canceled the data file selection.'}];
                    return;
                else
                    app.DataFilePathEditField.Value = fullfile(path, file);
                    app.DataFilePath = fullfile(path, file); % Update the DataFilePath property
                    previewData(app);
                end
            end
            
            % Check if ProjectName is defined
            if isempty(app.ProjectNameEditField.Value)
                msgbox('Please provide a project name.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Project name is not defined.'}];
                return;
            end
        
            % Use the project name as the default file name
            defaultFileName = strcat(app.ProjectNameEditField.Value, '.html');
            
            % Prompt the user to specify a new file path for the project
            [file, path] = uiputfile('*.html', 'Save Project As', defaultFileName);
            if isequal(file, 0)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
            end
        
            % Update the project properties with current values
            app.TimeStepIncrement = app.TimeStepIncrementsminEditField.Value;
            app.MinSapFlow = app.MinSapFlowEditField.Value;
            app.MaxSapFlow = app.MaxSapFlowEditField.Value;
            app.MaxChangePerInterval = app.MaxChangePerIntervalEditField.Value;
            app.DeleteDataPointsLessThan = app.DeleteDataPointsLessThanEditField.Value;
            app.PARThreshold = app.PARThresholdEditField.Value;
            app.VPDTime = app.VPDTimehEditField.Value;
            app.VPDThreshold = app.VPDThresholdEditField.Value;
        
            % Create JSON data for project
            projectData = struct();
            projectData.DataFilePath = app.DataFilePathEditField.Value;
            projectData.ProjectFilePath = app.ProjectFilePath;
            projectData.ProjectName = app.ProjectNameEditField.Value;
            projectData.TimeStepIncrement = app.TimeStepIncrement;
            projectData.MinSapFlow = app.MinSapFlow;
            projectData.MaxSapFlow = app.MaxSapFlow;
            projectData.MaxChangePerInterval = app.MaxChangePerInterval;
            projectData.DeleteDataPointsLessThan = app.DeleteDataPointsLessThan;
            projectData.PARThreshold = app.PARThreshold;
            projectData.VPDTime = app.VPDTime;
            projectData.VPDThreshold = app.VPDThreshold;
        
            % Convert project data to JSON
            jsonData = jsonencode(projectData);
        
            % Save JSON data to HTML file
            fid = fopen(app.ProjectFilePath, 'w');
            if fid == -1
                error('Cannot create HTML file');
            end
            fprintf(fid, '<html><body><pre>%s</pre></body></html>', jsonData);
            fclose(fid);
        
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project saved to: ', app.ProjectFilePath]}];
        
            % Extract the file name without extension to update ProjectName
            [~, fileName, ~] = fileparts(file);
            app.ProjectNameEditField.Value = fileName;
        
            % Notify the user that the project has been saved
            msgbox(['Project saved to: ', app.ProjectFilePath], 'Project Saved', 'help');
        end 


        function CreateProjectButtonPushed(app, ~)
            % Check if ProjectName is defined
            if isempty(app.ProjectNameEditField.Value)
                msgbox('Please provide a project name.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Project name is not defined.'}];
                return;
            end
            
            % Ensure the project name is unique
            if strcmp(app.ProjectNameEditField.Value, app.ProjectName)
                msgbox('The project name must be different from the current loaded project.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The project name must be different from the current loaded project.'}];
                return;
            end
        
            % Check if DataFilePath is defined
            if isempty(app.DataFilePathEditField.Value)
                % Prompt the user to select the data path
                [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User canceled the data file selection.'}];
                    return;
                else
                    app.DataFilePathEditField.Value = fullfile(path, file);
                    app.DataFilePath = fullfile(path, file); % Update the DataFilePath property
                    previewData(app);
                end
            end
            
            % Use the project name to create a new project file
            projectName = app.ProjectNameEditField.Value;
            defaultFileName = strcat(projectName, '.html');
            
            % Prompt the user to specify a new file path for the project
            [file, path] = uiputfile('*.html', 'Save Project As', defaultFileName);
            if isequal(file, 0)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
            end
            
            % Set default values for configurations
            app.TimeStepIncrement = 30; % Default value
            app.MinSapFlow = 0; % Default value
            app.MaxSapFlow = 1; % Default value
            app.MaxChangePerInterval = 1.5; % Default value
            app.DeleteDataPointsLessThan = 6; % Default value
            app.PARThreshold = 50; % Default value
            app.VPDTime = 24; % Default value
            app.VPDThreshold = 2; % Default value
            
            % Create JSON data for project
            projectData = struct();
            projectData.DataFilePath = app.DataFilePathEditField.Value;
            projectData.ProjectFilePath = app.ProjectFilePath;
            projectData.ProjectName = projectName;
            projectData.TimeStepIncrement = app.TimeStepIncrement;
            projectData.MinSapFlow = app.MinSapFlow;
            projectData.MaxSapFlow = app.MaxSapFlow;
            projectData.MaxChangePerInterval = app.MaxChangePerInterval;
            projectData.DeleteDataPointsLessThan = app.DeleteDataPointsLessThan;
            projectData.PARThreshold = app.PARThreshold;
            projectData.VPDTime = app.VPDTime;
            projectData.VPDThreshold = app.VPDThreshold;
            
            % Convert project data to JSON
            jsonData = jsonencode(projectData);
            
            % Save JSON data to HTML file
            fid = fopen(app.ProjectFilePath, 'w');
            if fid == -1
                error('Cannot create HTML file');
            end
            fprintf(fid, '<html><body><pre>%s</pre></body></html>', jsonData);
            fclose(fid);
            
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project created and saved to: ', app.ProjectFilePath]}];
            
            % Notify the user that the project has been created
            msgbox(['Project created and saved to: ', app.ProjectFilePath], 'Project Created', 'help');
        
            % Load the newly created project into the current configuration
            loadProject(app, app.ProjectFilePath);
        end

        function loadProject(app, projectFilePath)
            % Check if the project file exists
            if ~isfile(projectFilePath)
                app.TextArea2.Value = [app.TextArea2.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                return;
            end
        
            % Read JSON data from HTML file
            fid = fopen(projectFilePath, 'r');
            if fid == -1
                app.TextArea2.Value = [app.TextArea2.Value; {'Cannot open HTML file'}];
                return;
            end
            raw = fread(fid, inf);
            str = char(raw');
            fclose(fid);
        
            % Extract JSON data from HTML file
            jsonData = extractBetween(str, '<pre>', '</pre>');
            projectData = jsondecode(jsonData{1});
        
            % Check if all required fields are present in the project data
            requiredFields = {'DataFilePath', 'ProjectFilePath', 'TimeStepIncrement', 'MinSapFlow', 'MaxSapFlow', 'MaxChangePerInterval', 'DeleteDataPointsLessThan', 'PARThreshold', 'VPDTime', 'VPDThreshold', 'CurrentXData', 'CurrentYData', 'History', 'HistoryIndex', 'DeletionHistory', 'DeletionIndex', 'SubtractionHistory', 'SubtractionIndex'};
            for i = 1:length(requiredFields)
                if ~isfield(projectData, requiredFields{i})
                    app.TextArea2.Value = [app.TextArea2.Value; {['Missing field ', requiredFields{i}, ' in project data']}];
                    return;
                end
            end
        
            % Restore project data
            app.DataFilePath = projectData.DataFilePath;
            app.ProjectFilePath = projectData.ProjectFilePath;
            app.TimeStepIncrement = projectData.TimeStepIncrement;
            app.MinSapFlow = projectData.MinSapFlow;
            app.MaxSapFlow = projectData.MaxSapFlow;
            app.MaxChangePerInterval = projectData.MaxChangePerInterval;
            app.DeleteDataPointsLessThan = projectData.DeleteDataPointsLessThan;
            app.PARThreshold = projectData.PARThreshold;
            app.VPDTime = projectData.VPDTime;
            app.VPDThreshold = projectData.VPDThreshold;
            app.hPlot.XData = projectData.CurrentXData;
            app.hPlot.YData = projectData.CurrentYData;
        
            % Restore history for undo operations
            app.History = projectData.History;
            app.HistoryIndex = projectData.HistoryIndex;
            app.DeletionHistory = projectData.DeletionHistory;
            app.DeletionIndex = projectData.DeletionIndex;
            app.SubtractionHistory = projectData.SubtractionHistory;
            app.SubtractionIndex = projectData.SubtractionIndex;
        
            % Restore edited data to the table
            app.UITable4.Data = projectData.EditedData;
        
            % Update UI fields with loaded data
            app.DataFilePathEditField.Value = app.DataFilePath;
            app.ProjectFilePathEditField.Value = app.ProjectFilePath;
            app.TimeStepIncrementsminEditField.Value = app.TimeStepIncrement;
            app.MinSapFlowEditField.Value = app.MinSapFlow;
            app.MaxSapFlowEditField.Value = app.MaxSapFlow;
            app.MaxChangePerIntervalEditField.Value = app.MaxChangePerInterval;
            app.DeleteDataPointsLessThanEditField.Value = app.DeleteDataPointsLessThan;
            app.PARThresholdEditField.Value = app.PARThreshold;
            app.VPDTimehEditField.Value = app.VPDTime;
            app.VPDThresholdEditField.Value = app.VPDThreshold;
        
            % Check if ProjectName is defined in the project
            if isfield(projectData, 'ProjectName')
                app.ProjectName = projectData.ProjectName;
            else
                [~, name, ~] = fileparts(app.ProjectFilePath);
                app.ProjectName = name;
            end
            app.ProjectNameEditField.Value = app.ProjectName;
        
            % Plot the loaded data
            app.plotData(true); % Pass true to maintain the current zoom level
        
            app.TextArea2.Value = [app.TextArea2.Value; {['Project loaded from: ', app.ProjectFilePath]}];
        end


        function OpenProjectButtonPushed(app, ~)
            % Prompt the user to select the project file path if not defined or to select a new project file
            [file, path] = uigetfile('*.html', 'Select Project File');
            if isequal(file, 0)
                % User canceled the action
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
                app.ProjectFilePathEditField.Value = app.ProjectFilePath;
            end
            
            % Check if the project file exists
            if ~isfile(app.ProjectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                return;
            end
            
            % Read JSON data from HTML file
            fid = fopen(app.ProjectFilePath, 'r');
            if fid == -1
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Cannot open HTML file'}];
                return;
            end
            raw = fread(fid, inf);
            str = char(raw');
            fclose(fid);
            
            % Extract JSON data from HTML file
            jsonData = extractBetween(str, '<pre>', '</pre>');
            projectData = jsondecode(jsonData{1});
            
            % Check if all required fields are present in the project data
            requiredFields = {'DataFilePath', 'ProjectFilePath', 'TimeStepIncrement', 'MinSapFlow', 'MaxSapFlow', 'MaxChangePerInterval', 'DeleteDataPointsLessThan', 'PARThreshold', 'VPDTime', 'VPDThreshold'};
            for i = 1:length(requiredFields)
                if ~isfield(projectData, requiredFields{i})
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Missing field ', requiredFields{i}, ' in project data']}];
                    return;
                end
            end
            
            % Restore project data
            app.DataFilePath = projectData.DataFilePath;
            app.ProjectFilePath = projectData.ProjectFilePath;
            app.TimeStepIncrement = projectData.TimeStepIncrement;
            app.MinSapFlow = projectData.MinSapFlow;
            app.MaxSapFlow = projectData.MaxSapFlow;
            app.MaxChangePerInterval = projectData.MaxChangePerInterval;
            app.DeleteDataPointsLessThan = projectData.DeleteDataPointsLessThan;
            app.PARThreshold = projectData.PARThreshold;
            app.VPDTime = projectData.VPDTime;
            app.VPDThreshold = projectData.VPDThreshold;
            
            % Update UI fields with loaded data
            app.DataFilePathEditField.Value = app.DataFilePath;
            app.ProjectFilePathEditField.Value = app.ProjectFilePath;
            app.TimeStepIncrementsminEditField.Value = app.TimeStepIncrement;
            app.MinSapFlowEditField.Value = app.MinSapFlow;
            app.MaxSapFlowEditField.Value = app.MaxSapFlow;
            app.MaxChangePerIntervalEditField.Value = app.MaxChangePerInterval;
            app.DeleteDataPointsLessThanEditField.Value = app.DeleteDataPointsLessThan;
            app.PARThresholdEditField.Value = app.PARThreshold;
            app.VPDTimehEditField.Value = app.VPDTime;
            app.VPDThresholdEditField.Value = app.VPDThreshold;
            
            % Check if ProjectName is defined in the project
            if isfield(projectData, 'ProjectName')
                app.ProjectName = projectData.ProjectName;
            else
                [~, name, ~] = fileparts(app.ProjectFilePath);
                app.ProjectName = name;
            end
            app.ProjectNameEditField.Value = app.ProjectName;
            
            % Check if DataFilePath is defined in the project
            if isempty(app.DataFilePath)
                [file, path] = uigetfile('*.*', 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Please define the data path before proceeding.'}];
                    return;
                else
                    app.DataFilePath = fullfile(path, file);
                    app.DataFilePathEditField.Value = app.DataFilePath;
                    previewData(app);
                end
            else
                previewData(app);
            end
            
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project loaded from: ', app.ProjectFilePath]}];
        end


        function SaveProjectButtonPushed(app, ~, ~)
            % Ensure all configurations, DataFilePath, and ProjectFilePath are defined
            if isempty(app.DataFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Data file path is not defined. Please set the data file path before saving the project.'}];
                return;
            end
            if isempty(app.ProjectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Project file path is not defined. Please use Save As to define the project file path first.'}];
                return;
            end
        
            % Update the project properties with current values
            app.TimeStepIncrement = app.TimeStepIncrementsminEditField.Value;
            app.MinSapFlow = app.MinSapFlowEditField.Value;
            app.MaxSapFlow = app.MaxSapFlowEditField.Value;
            app.MaxChangePerInterval = app.MaxChangePerIntervalEditField.Value;
            app.DeleteDataPointsLessThan = app.DeleteDataPointsLessThanEditField.Value;
            app.PARThreshold = app.PARThresholdEditField.Value;
            app.VPDTime = app.VPDTimehEditField.Value;
            app.VPDThreshold = app.VPDThresholdEditField.Value;
        
            % Create JSON data for project
            projectData = struct();
            projectData.DataFilePath = app.DataFilePath;
            projectData.ProjectFilePath = app.ProjectFilePath;
            projectData.ProjectName = app.ProjectName;
            projectData.TimeStepIncrement = app.TimeStepIncrement;
            projectData.MinSapFlow = app.MinSapFlow;
            projectData.MaxSapFlow = app.MaxSapFlow;
            projectData.MaxChangePerInterval = app.MaxChangePerInterval;
            projectData.DeleteDataPointsLessThan = app.DeleteDataPointsLessThan;
            projectData.PARThreshold = app.PARThreshold;
            projectData.VPDTime = app.VPDTime;
            projectData.VPDThreshold = app.VPDThreshold;
        
            % Convert project data to JSON
            jsonData = jsonencode(projectData);
        
            % Save JSON data to HTML file
            fid = fopen(app.ProjectFilePath, 'w');
            if fid == -1
                error('Cannot create HTML file');
            end
            fprintf(fid, '<html><body><pre>%s</pre></body></html>', jsonData);
            fclose(fid);
        
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project saved to: ', app.ProjectFilePath]}];
        
            % Preview the data file in the UITable
            previewData(app);
        end

    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Menu selected function: ShowlegendMenu
        function ShowlegendMenuSelected(app, event)
            legend(app.UIAxes4);
        end

        % Menu selected function: ShowlegendMenu_2
        function ShowlegendMenu_2Selected(app, event)
            legend(app.UIAxes3);
        end

        % Menu selected function: ShowlegendMenu_3
        function ShowlegendMenu_3Selected(app, event)
            legend(app.UIAxes3_2);
        end

        % Menu selected function: ShowlegendMenu_4
        function ShowlegendMenu_4Selected(app, event)
            legend(app.UIAxes5);
        end

        % Menu selected function: AboutMenu
        function AboutMenuSelected(app, event)
            text = {
                '    SapFlower 1.0'
                ''
                '    SapFlower 1.0 was created based on Baseliner 4.0,'
                '    which was created by A. Christopher Oishi & David Hawthorne'
                '    USDA Forest Service, Southern Research Station'
                '    Coweeta Hydrologic Laboratory'
                ''
                '    SapFlower was created to automate the preprocessing, data gap filling,'
                '    and analyzing of sap flow data measured based on Heat Dissipation Probes.'
                ''
                '    Copyright (c) 2024 Jiaxin Wang'
                '    Licensed under the MIT License'
            };
            
            % Create the main dialog
            dialog = javaObjectEDT('javax.swing.JDialog');
            dialog.setTitle('About SapFlower 1.0');
            dialog.setModal(true);
            % Create a panel to hold the text area
            panel = javaObjectEDT('javax.swing.JPanel');
            panel.setLayout(java.awt.BorderLayout);
            % Create a text area
            textArea = javaObjectEDT('javax.swing.JTextArea');
            textArea.setEditable(false);
            % Set the font size
            textArea.setFont(java.awt.Font('Dialog', java.awt.Font.PLAIN, 14)); % Change '14' to the desired font size
            % Set the text content
            textArea.setText(strjoin(text, newline));
            % Add the text area to a scroll pane
            scrollPane = javaObjectEDT('javax.swing.JScrollPane', textArea);
            % Add the scroll pane to the panel
            panel.add(scrollPane, java.awt.BorderLayout.CENTER);
            % Add the panel to the dialog
            dialog.getContentPane().add(panel);
            % Set the dialog size
            dialog.setSize(500, 300); % Change the size as needed
            % Center the dialog on the screen
            dialog.setLocationRelativeTo([]);
            % Set the icon (if needed)
            icon = javax.swing.ImageIcon('SapFlower.png');
            dialog.setIconImage(icon.getImage());
            % Make the dialog visible
            dialog.setVisible(true);
        end

        % Menu selected function: ShowLegendMenu
        function ShowLegendMenuSelected(app, event)
            legend(app.UIAxes6);
        end

        % Button pushed function: DataPathButton
        function DataPathButtonPushed2(app, event)
            app.DataPathButton.ButtonPushedFcn = createCallbackFcn(app, @DataPathButtonPushed, true);
        end

        % Button pushed function: ProjectPathButton
        function ProjectPathButtonPushed2(app, event)
            app.ProjectPathButton.ButtonPushedFcn = createCallbackFcn(app, @ProjectPathButtonPushed, true);
        end

        % Button pushed function: CreateProjectButton
        function CreateProjectButtonPushed2(app, event)
            app.CreateProjectButton.ButtonPushedFcn = createCallbackFcn(app, @CreateProjectButtonPushed, true);
        end

        % Button pushed function: OpenProjectButton
        function OpenProjectButtonPushed2(app, event)
            app.OpenProjectButton.ButtonPushedFcn = createCallbackFcn(app, @OpenProjectButtonPushed, true);
        end

        % Button pushed function: SaveProjectButton
        function SaveProjectButtonPushed2(app, event)
            app.SaveProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveProjectButtonPushed, true);
        end

        % Button pushed function: SaveAsProjectButton
        function SaveAsProjectButtonPushed(app, event)
            app.SaveAsProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveAsProjectSButtonPushed, true);
        end

        % Button pushed function: PlotDataButton
        function PlotDataButtonPushed2(app, event)
            app.PlotDataButton.ButtonPushedFcn = createCallbackFcn(app, @PlotDataButtonPushed, true);
        end

        % Button pushed function: UndoDeletionButton
        function UndoDeletionButtonPushed2(app, event)
            app.UndoDeletionButton.ButtonPushedFcn = createCallbackFcn(app, @UndoDeletionButtonPushed, true);
        end

        % Button pushed function: ReversedataButton
        function ReversedataButtonPushed2(app, event)
            app.ReversedataButton.ButtonPushedFcn = createCallbackFcn(app, @ReversedataButtonPushed, true);
        end

        % Button pushed function: UndoReverseButton
        function UndoReverseButtonPushed(app, event)
            app.UndoReverseButton.ButtonPushedFcn = createCallbackFcn(app, @UndoSubtractionButtonPushed, true);
        end

        % Button pushed function: FinishEditingButton
        function FinishEditingButtonPushed2(app, event)
            app.FinishEditingButton.ButtonPushedFcn = createCallbackFcn(app, @FinishEditingButtonPushed, true);
        end

        % Button pushed function: SaveDataButton
        function SaveDataButtonPushed2(app, event)
            app.SaveDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButtonPushed, true);
        end

        % Button pushed function: DeletedTdataButton
        function DeletedTdataButtonPushed2(app, event)
            app.DeletedTdataButton.ButtonPushedFcn = createCallbackFcn(app, @DeletedTdataButtonPushed, true);
        end

        % Button pushed function: PreviousSensorButton
        function PreviousSensorButtonPushed2(app, event)
            app.PreviousSensorButton.ButtonPushedFcn = createCallbackFcn(app, @PreviousSensorButtonPushed, true);
        end

        % Button pushed function: NextSensorButton
        function NextSensorButtonPushed2(app, event)
            app.NextSensorButton.ButtonPushedFcn = createCallbackFcn(app, @NextSensorButtonPushed, true);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create SapFlowerUIFigure and hide until all components are created
            app.SapFlowerUIFigure = uifigure('Visible', 'off');
            app.SapFlowerUIFigure.Color = [0.651 0.651 0.651];
            app.SapFlowerUIFigure.Position = [100 100 1210 728];
            app.SapFlowerUIFigure.Name = 'SapFlower';
            app.SapFlowerUIFigure.Icon = fullfile(pathToMLAPP, 'SapFlower.png');
            app.SapFlowerUIFigure.Scrollable = 'on';
            app.SapFlowerUIFigure.HandleVisibility = 'on';
            app.SapFlowerUIFigure.Tag = 'Version 1.0';

            % Create FileMenu
            app.FileMenu = uimenu(app.SapFlowerUIFigure);
            app.FileMenu.Text = 'File';

            % Create CreateNewFileMenu
            app.CreateNewFileMenu = uimenu(app.FileMenu);
            app.CreateNewFileMenu.Text = 'CreateNewFile';

            % Create OpenFileMenu
            app.OpenFileMenu = uimenu(app.FileMenu);
            app.OpenFileMenu.Text = 'OpenFile';

            % Create SaveMenu
            app.SaveMenu = uimenu(app.FileMenu);
            app.SaveMenu.Text = 'Save';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FileMenu);
            app.ExitMenu.Text = 'Exit';

            % Create EditMenu
            app.EditMenu = uimenu(app.SapFlowerUIFigure);
            app.EditMenu.Text = 'Edit';

            % Create CleanDataMenu
            app.CleanDataMenu = uimenu(app.EditMenu);
            app.CleanDataMenu.Text = 'CleanData';

            % Create SmoothdataMenu_2
            app.SmoothdataMenu_2 = uimenu(app.CleanDataMenu);
            app.SmoothdataMenu_2.Text = 'Smooth data';

            % Create SimpleMovingAverageSMAMenu_2
            app.SimpleMovingAverageSMAMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SimpleMovingAverageSMAMenu_2.Text = 'Simple Moving Average (SMA)';

            % Create ExponentialMovingAverageEMAMenu_2
            app.ExponentialMovingAverageEMAMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.ExponentialMovingAverageEMAMenu_2.Text = 'Exponential Moving Average (EMA)';

            % Create KalmanFilterMenu_2
            app.KalmanFilterMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.KalmanFilterMenu_2.Text = 'Kalman Filter';

            % Create SeasonalDecompositionofTimeSeriesSTLMenu_2
            app.SeasonalDecompositionofTimeSeriesSTLMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SeasonalDecompositionofTimeSeriesSTLMenu_2.Text = 'Seasonal Decomposition of Time Series (STL)';

            % Create GaussianProcessRegressionMenu_2
            app.GaussianProcessRegressionMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.GaussianProcessRegressionMenu_2.Text = 'Gaussian Process Regression';

            % Create SavitzkyGolayFilterMenu_2
            app.SavitzkyGolayFilterMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SavitzkyGolayFilterMenu_2.Text = 'Savitzky-Golay Filter';

            % Create WaveletTransformMenu_2
            app.WaveletTransformMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.WaveletTransformMenu_2.Text = 'Wavelet Transform';

            % Create HiddenMarkovModelHMMMenu_2
            app.HiddenMarkovModelHMMMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.HiddenMarkovModelHMMMenu_2.Text = 'Hidden Markov Model (HMM)';

            % Create IsolationForestMenu_2
            app.IsolationForestMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.IsolationForestMenu_2.Text = 'Isolation Forest';

            % Create RecurrentNeuralNetworksRNNsMenu_2
            app.RecurrentNeuralNetworksRNNsMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.RecurrentNeuralNetworksRNNsMenu_2.Text = 'Recurrent Neural Networks (RNNs)';

            % Create DynamicTimeWarpingDTWMenu_2
            app.DynamicTimeWarpingDTWMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.DynamicTimeWarpingDTWMenu_2.Text = 'Dynamic Time Warping (DTW)';

            % Create QuantileRegressionMenu_2
            app.QuantileRegressionMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.QuantileRegressionMenu_2.Text = 'Quantile Regression';

            % Create BayesianFilteringMenu_2
            app.BayesianFilteringMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.BayesianFilteringMenu_2.Text = 'Bayesian Filtering';

            % Create GapFillMenu
            app.GapFillMenu = uimenu(app.EditMenu);
            app.GapFillMenu.Text = 'GapFill';

            % Create LinearmodelsMenu
            app.LinearmodelsMenu = uimenu(app.GapFillMenu);
            app.LinearmodelsMenu.Text = 'Linear models';

            % Create SimplelinearmodelMenu
            app.SimplelinearmodelMenu = uimenu(app.LinearmodelsMenu);
            app.SimplelinearmodelMenu.Text = 'Simple linear model';

            % Create MultivariatelinearmodelMenu
            app.MultivariatelinearmodelMenu = uimenu(app.LinearmodelsMenu);
            app.MultivariatelinearmodelMenu.Text = 'Multivariate linear model';

            % Create WeightedmultivariatelinearmodelMenu
            app.WeightedmultivariatelinearmodelMenu = uimenu(app.LinearmodelsMenu);
            app.WeightedmultivariatelinearmodelMenu.Text = 'Weighted multivariate linear model';

            % Create NonlinearmodelsMenu
            app.NonlinearmodelsMenu = uimenu(app.GapFillMenu);
            app.NonlinearmodelsMenu.Text = 'Non-linear models';

            % Create LSTMMenu
            app.LSTMMenu = uimenu(app.NonlinearmodelsMenu);
            app.LSTMMenu.Text = 'LSTM';

            % Create BiLSTMMenu
            app.BiLSTMMenu = uimenu(app.NonlinearmodelsMenu);
            app.BiLSTMMenu.Text = 'BiLSTM';

            % Create GaussianProcessesMenu
            app.GaussianProcessesMenu = uimenu(app.NonlinearmodelsMenu);
            app.GaussianProcessesMenu.Text = 'Gaussian Processes';

            % Create KernelRegressionMenu
            app.KernelRegressionMenu = uimenu(app.NonlinearmodelsMenu);
            app.KernelRegressionMenu.Text = 'Kernel Regression';

            % Create NonlinearAutoRegressiveModelwitheXogenousInputsNARXMenu
            app.NonlinearAutoRegressiveModelwitheXogenousInputsNARXMenu = uimenu(app.NonlinearmodelsMenu);
            app.NonlinearAutoRegressiveModelwitheXogenousInputsNARXMenu.Text = 'Nonlinear AutoRegressive Model with eXogenous Inputs (NARX)';

            % Create SplineInterpolationMenu
            app.SplineInterpolationMenu = uimenu(app.NonlinearmodelsMenu);
            app.SplineInterpolationMenu.Text = 'Spline Interpolation';

            % Create LOESSLocallyWeightedScatterplotSmoothingMenu
            app.LOESSLocallyWeightedScatterplotSmoothingMenu = uimenu(app.NonlinearmodelsMenu);
            app.LOESSLocallyWeightedScatterplotSmoothingMenu.Text = 'LOESS (Locally Weighted Scatterplot Smoothing)';

            % Create ReverseDataMenu
            app.ReverseDataMenu = uimenu(app.EditMenu);
            app.ReverseDataMenu.Text = 'ReverseData';

            % Create ReverseMenu
            app.ReverseMenu = uimenu(app.ReverseDataMenu);
            app.ReverseMenu.Text = 'Reverse';

            % Create UndoreverseMenu
            app.UndoreverseMenu = uimenu(app.ReverseDataMenu);
            app.UndoreverseMenu.Text = 'Undo reverse';

            % Create ViewMenu
            app.ViewMenu = uimenu(app.SapFlowerUIFigure);
            app.ViewMenu.Text = 'View';

            % Create ChangeBackgroundColorMenu
            app.ChangeBackgroundColorMenu = uimenu(app.ViewMenu);
            app.ChangeBackgroundColorMenu.Text = 'Change Background Color';

            % Create FullScreenMenu_2
            app.FullScreenMenu_2 = uimenu(app.ViewMenu);
            app.FullScreenMenu_2.Text = 'Full Screen';

            % Create PlotMenu
            app.PlotMenu = uimenu(app.SapFlowerUIFigure);
            app.PlotMenu.Text = 'Plot';

            % Create ExportMenu
            app.ExportMenu = uimenu(app.PlotMenu);
            app.ExportMenu.Text = 'Export';

            % Create SaveasMenu
            app.SaveasMenu = uimenu(app.PlotMenu);
            app.SaveasMenu.Text = 'Save as';

            % Create FullScreenMenu
            app.FullScreenMenu = uimenu(app.PlotMenu);
            app.FullScreenMenu.Text = 'Full Screen';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.SapFlowerUIFigure);
            app.HelpMenu.Text = 'Help';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.HelpMenu);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';

            % Create ManualMenu
            app.ManualMenu = uimenu(app.HelpMenu);
            app.ManualMenu.Text = 'Manual';

            % Create HomePageMenu
            app.HomePageMenu = uimenu(app.HelpMenu);
            app.HomePageMenu.Text = 'HomePage';

            % Create GitHubMenu
            app.GitHubMenu = uimenu(app.HelpMenu);
            app.GitHubMenu.Text = 'GitHub';

            % Create LatestversionMenu
            app.LatestversionMenu = uimenu(app.HelpMenu);
            app.LatestversionMenu.Text = 'Latest version';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.SapFlowerUIFigure);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.Scrollable = 'on';
            app.GridLayout.BackgroundColor = [0.2706 0.4314 0.4784];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GridLayout);
            app.TabGroup.Layout.Row = [1 9];
            app.TabGroup.Layout.Column = [1 6];

            % Create ProjectConfigurationTab
            app.ProjectConfigurationTab = uitab(app.TabGroup);
            app.ProjectConfigurationTab.Title = 'Project Configuration';
            app.ProjectConfigurationTab.BackgroundColor = [0.8 0.8 0.8];

            % Create GridLayout10
            app.GridLayout10 = uigridlayout(app.ProjectConfigurationTab);
            app.GridLayout10.ColumnWidth = {179, '1.61x', '1.24x', 92, '1.47x', '1.47x', 82, '1.5x', '1x', 99, '4.71x', 229};
            app.GridLayout10.RowHeight = {30, 30, 30, 30, 30, 29, '9.1x', '1x'};
            app.GridLayout10.ColumnSpacing = 1;
            app.GridLayout10.RowSpacing = 8.88888888888889;
            app.GridLayout10.Padding = [1 8.88888888888889 1 8.88888888888889];
            app.GridLayout10.BackgroundColor = [0.651 0.651 0.651];

            % Create Image
            app.Image = uiimage(app.GridLayout10);
            app.Image.Layout.Row = [1 6];
            app.Image.Layout.Column = 12;
            app.Image.ImageSource = fullfile(pathToMLAPP, 'SapFlower_white_bg.png');

            % Create UITable4
            app.UITable4 = uitable(app.GridLayout10);
            app.UITable4.ColumnName = '';
            app.UITable4.ColumnRearrangeable = 'on';
            app.UITable4.RowName = {};
            app.UITable4.ColumnSortable = true;
            app.UITable4.ColumnEditable = true;
            app.UITable4.Layout.Row = 7;
            app.UITable4.Layout.Column = [1 12];

            % Create ProjectFilePathEditField
            app.ProjectFilePathEditField = uieditfield(app.GridLayout10, 'text');
            app.ProjectFilePathEditField.Layout.Row = 2;
            app.ProjectFilePathEditField.Layout.Column = [2 9];

            % Create ProjectNameEditField
            app.ProjectNameEditField = uieditfield(app.GridLayout10, 'text');
            app.ProjectNameEditField.Layout.Row = 3;
            app.ProjectNameEditField.Layout.Column = [2 4];

            % Create TimeStepIncrementsminEditField
            app.TimeStepIncrementsminEditField = uieditfield(app.GridLayout10, 'numeric');
            app.TimeStepIncrementsminEditField.Layout.Row = 4;
            app.TimeStepIncrementsminEditField.Layout.Column = 2;
            app.TimeStepIncrementsminEditField.Value = 30;

            % Create MaxChangePerIntervalEditField
            app.MaxChangePerIntervalEditField = uieditfield(app.GridLayout10, 'numeric');
            app.MaxChangePerIntervalEditField.Layout.Row = 5;
            app.MaxChangePerIntervalEditField.Layout.Column = 2;
            app.MaxChangePerIntervalEditField.Value = 1.5;

            % Create DeleteDataPointsLessThanEditField
            app.DeleteDataPointsLessThanEditField = uieditfield(app.GridLayout10, 'numeric');
            app.DeleteDataPointsLessThanEditField.Layout.Row = 6;
            app.DeleteDataPointsLessThanEditField.Layout.Column = 2;
            app.DeleteDataPointsLessThanEditField.Value = 6;

            % Create VPDThresholdEditField
            app.VPDThresholdEditField = uieditfield(app.GridLayout10, 'numeric');
            app.VPDThresholdEditField.Layout.Row = 6;
            app.VPDThresholdEditField.Layout.Column = 5;
            app.VPDThresholdEditField.Value = 2;

            % Create PARThresholdEditField
            app.PARThresholdEditField = uieditfield(app.GridLayout10, 'numeric');
            app.PARThresholdEditField.Layout.Row = 5;
            app.PARThresholdEditField.Layout.Column = 5;
            app.PARThresholdEditField.Value = 50;

            % Create MinSapFlowEditField
            app.MinSapFlowEditField = uieditfield(app.GridLayout10, 'numeric');
            app.MinSapFlowEditField.Layout.Row = 4;
            app.MinSapFlowEditField.Layout.Column = 5;

            % Create ReservedEditField
            app.ReservedEditField = uieditfield(app.GridLayout10, 'numeric');
            app.ReservedEditField.AllowEmpty = 'on';
            app.ReservedEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ReservedEditField.Layout.Row = 6;
            app.ReservedEditField.Layout.Column = 8;
            app.ReservedEditField.Value = [];

            % Create VPDTimehEditField
            app.VPDTimehEditField = uieditfield(app.GridLayout10, 'numeric');
            app.VPDTimehEditField.Layout.Row = 5;
            app.VPDTimehEditField.Layout.Column = 8;
            app.VPDTimehEditField.Value = 24;

            % Create MaxSapFlowEditField
            app.MaxSapFlowEditField = uieditfield(app.GridLayout10, 'numeric');
            app.MaxSapFlowEditField.Layout.Row = 4;
            app.MaxSapFlowEditField.Layout.Column = 8;
            app.MaxSapFlowEditField.Value = 1;

            % Create ProjectPathButton
            app.ProjectPathButton = uibutton(app.GridLayout10, 'push');
            app.ProjectPathButton.ButtonPushedFcn = createCallbackFcn(app, @ProjectPathButtonPushed2, true);
            app.ProjectPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.ProjectPathButton.Layout.Row = 2;
            app.ProjectPathButton.Layout.Column = 10;
            app.ProjectPathButton.Text = 'Project Path';

            % Create CreateProjectButton
            app.CreateProjectButton = uibutton(app.GridLayout10, 'push');
            app.CreateProjectButton.ButtonPushedFcn = createCallbackFcn(app, @CreateProjectButtonPushed2, true);
            app.CreateProjectButton.BackgroundColor = [0.1686 0.5098 0.498];
            app.CreateProjectButton.FontColor = [1 1 1];
            app.CreateProjectButton.Layout.Row = 3;
            app.CreateProjectButton.Layout.Column = 10;
            app.CreateProjectButton.Text = 'Create Project';

            % Create OpenProjectButton
            app.OpenProjectButton = uibutton(app.GridLayout10, 'push');
            app.OpenProjectButton.ButtonPushedFcn = createCallbackFcn(app, @OpenProjectButtonPushed2, true);
            app.OpenProjectButton.BackgroundColor = [0.1608 0.6392 0.6392];
            app.OpenProjectButton.FontColor = [1 1 1];
            app.OpenProjectButton.Layout.Row = 4;
            app.OpenProjectButton.Layout.Column = 10;
            app.OpenProjectButton.Text = 'Open Project';

            % Create SaveProjectButton
            app.SaveProjectButton = uibutton(app.GridLayout10, 'push');
            app.SaveProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveProjectButtonPushed2, true);
            app.SaveProjectButton.BackgroundColor = [0.3176 0.7216 0.6118];
            app.SaveProjectButton.FontColor = [1 1 1];
            app.SaveProjectButton.Layout.Row = 5;
            app.SaveProjectButton.Layout.Column = 10;
            app.SaveProjectButton.Text = 'Save Project';

            % Create DefineProjectFilePathLabel
            app.DefineProjectFilePathLabel = uilabel(app.GridLayout10);
            app.DefineProjectFilePathLabel.FontColor = [1 1 1];
            app.DefineProjectFilePathLabel.Layout.Row = 2;
            app.DefineProjectFilePathLabel.Layout.Column = 1;
            app.DefineProjectFilePathLabel.Text = 'Define Project File Path';

            % Create ProjectNameLabel
            app.ProjectNameLabel = uilabel(app.GridLayout10);
            app.ProjectNameLabel.FontColor = [1 1 1];
            app.ProjectNameLabel.Layout.Row = 3;
            app.ProjectNameLabel.Layout.Column = 1;
            app.ProjectNameLabel.Text = 'Project Name';

            % Create TimeStepIncrementsminLabel
            app.TimeStepIncrementsminLabel = uilabel(app.GridLayout10);
            app.TimeStepIncrementsminLabel.FontColor = [1 1 1];
            app.TimeStepIncrementsminLabel.Layout.Row = 4;
            app.TimeStepIncrementsminLabel.Layout.Column = 1;
            app.TimeStepIncrementsminLabel.Text = 'Time Step Increments (min)';

            % Create MaxChangePerIntervalLabel
            app.MaxChangePerIntervalLabel = uilabel(app.GridLayout10);
            app.MaxChangePerIntervalLabel.FontColor = [1 1 1];
            app.MaxChangePerIntervalLabel.Layout.Row = 5;
            app.MaxChangePerIntervalLabel.Layout.Column = 1;
            app.MaxChangePerIntervalLabel.Text = 'Max Change Per Interval';

            % Create DeleteDataPointsLessThanLabel
            app.DeleteDataPointsLessThanLabel = uilabel(app.GridLayout10);
            app.DeleteDataPointsLessThanLabel.FontColor = [1 1 1];
            app.DeleteDataPointsLessThanLabel.Layout.Row = 6;
            app.DeleteDataPointsLessThanLabel.Layout.Column = 1;
            app.DeleteDataPointsLessThanLabel.Text = 'Delete Data Points Less Than';

            % Create MinSapFlowLabel
            app.MinSapFlowLabel = uilabel(app.GridLayout10);
            app.MinSapFlowLabel.FontColor = [1 1 1];
            app.MinSapFlowLabel.Layout.Row = 4;
            app.MinSapFlowLabel.Layout.Column = 4;
            app.MinSapFlowLabel.Text = 'Min SapFlow';

            % Create PARThresholdLabel
            app.PARThresholdLabel = uilabel(app.GridLayout10);
            app.PARThresholdLabel.FontColor = [1 1 1];
            app.PARThresholdLabel.Layout.Row = 5;
            app.PARThresholdLabel.Layout.Column = 4;
            app.PARThresholdLabel.Text = 'PAR Threshold';

            % Create VPDThresholdLabel
            app.VPDThresholdLabel = uilabel(app.GridLayout10);
            app.VPDThresholdLabel.FontColor = [1 1 1];
            app.VPDThresholdLabel.Layout.Row = 6;
            app.VPDThresholdLabel.Layout.Column = 4;
            app.VPDThresholdLabel.Text = 'VPD Threshold';

            % Create MaxSapFlowLabel
            app.MaxSapFlowLabel = uilabel(app.GridLayout10);
            app.MaxSapFlowLabel.FontColor = [1 1 1];
            app.MaxSapFlowLabel.Layout.Row = 4;
            app.MaxSapFlowLabel.Layout.Column = 7;
            app.MaxSapFlowLabel.Text = 'Max SapFlow';

            % Create VPDTimehLabel
            app.VPDTimehLabel = uilabel(app.GridLayout10);
            app.VPDTimehLabel.FontColor = [1 1 1];
            app.VPDTimehLabel.Layout.Row = 5;
            app.VPDTimehLabel.Layout.Column = 7;
            app.VPDTimehLabel.Text = 'VPD Time (h)';

            % Create ReservedLabel
            app.ReservedLabel = uilabel(app.GridLayout10);
            app.ReservedLabel.FontColor = [1 1 1];
            app.ReservedLabel.Layout.Row = 6;
            app.ReservedLabel.Layout.Column = 7;
            app.ReservedLabel.Text = 'Reserved';

            % Create SaveAsProjectButton
            app.SaveAsProjectButton = uibutton(app.GridLayout10, 'push');
            app.SaveAsProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveAsProjectButtonPushed, true);
            app.SaveAsProjectButton.BackgroundColor = [0.251 0.6784 0.5647];
            app.SaveAsProjectButton.FontColor = [1 1 1];
            app.SaveAsProjectButton.Layout.Row = 6;
            app.SaveAsProjectButton.Layout.Column = 10;
            app.SaveAsProjectButton.Text = 'Save As Project';

            % Create DefineDataFilePathLabel
            app.DefineDataFilePathLabel = uilabel(app.GridLayout10);
            app.DefineDataFilePathLabel.FontColor = [1 1 1];
            app.DefineDataFilePathLabel.Layout.Row = 1;
            app.DefineDataFilePathLabel.Layout.Column = 1;
            app.DefineDataFilePathLabel.Text = 'Define Data File Path';

            % Create DataFilePathEditField
            app.DataFilePathEditField = uieditfield(app.GridLayout10, 'text');
            app.DataFilePathEditField.Layout.Row = 1;
            app.DataFilePathEditField.Layout.Column = [2 9];

            % Create DataPathButton
            app.DataPathButton = uibutton(app.GridLayout10, 'push');
            app.DataPathButton.ButtonPushedFcn = createCallbackFcn(app, @DataPathButtonPushed2, true);
            app.DataPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.DataPathButton.Layout.Row = 1;
            app.DataPathButton.Layout.Column = 10;
            app.DataPathButton.Text = 'Data Path';

            % Create OutputTextArea
            app.OutputTextArea = uitextarea(app.GridLayout10);
            app.OutputTextArea.Layout.Row = 8;
            app.OutputTextArea.Layout.Column = [1 12];

            % Create DataPreprocessingTab
            app.DataPreprocessingTab = uitab(app.TabGroup);
            app.DataPreprocessingTab.Title = 'Data Preprocessing';
            app.DataPreprocessingTab.BackgroundColor = [0.902 0.902 0.902];
            app.DataPreprocessingTab.Scrollable = 'on';

            % Create GridLayout11
            app.GridLayout11 = uigridlayout(app.DataPreprocessingTab);
            app.GridLayout11.ColumnWidth = {38, 51, 41, 52, '1x', 86, 37, 22, 35, '1.78x', '1.41x', 27, '3.19x', '1.3x', 62, 31, '1.85x', 90, '2.11x', 96, '1.85x', 74, '1.7x'};
            app.GridLayout11.RowHeight = {22, '1.6x', '1x', 22, 22};
            app.GridLayout11.ColumnSpacing = 0.375;
            app.GridLayout11.RowSpacing = 3.5;
            app.GridLayout11.Padding = [0.375 3.5 0.375 3.5];
            app.GridLayout11.BackgroundColor = [0.651 0.651 0.651];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GridLayout11);
            xlabel(app.UIAxes5, 'Time')
            ylabel(app.UIAxes5, 'K detail')
            zlabel(app.UIAxes5, 'Z')
            app.UIAxes5.TickLength = [0.006 0.025];
            app.UIAxes5.GridLineStyle = '-.';
            app.UIAxes5.XColor = [0 0 0];
            app.UIAxes5.XTick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
            app.UIAxes5.YColor = [0 0 0];
            app.UIAxes5.YTick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
            app.UIAxes5.ZColor = [0 0 0];
            app.UIAxes5.LineWidth = 0.25;
            app.UIAxes5.Box = 'on';
            app.UIAxes5.XGrid = 'on';
            app.UIAxes5.YGrid = 'on';
            app.UIAxes5.Layout.Row = 3;
            app.UIAxes5.Layout.Column = [16 23];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.GridLayout11);
            xlabel(app.UIAxes4, 'Time')
            ylabel(app.UIAxes4, 'dT (°C)')
            zlabel(app.UIAxes4, 'Z')
            app.UIAxes4.TickLength = [0.006 0.025];
            app.UIAxes4.GridLineStyle = '-.';
            app.UIAxes4.XColor = [0 0 0];
            app.UIAxes4.YColor = [0 0 0];
            app.UIAxes4.ZColor = [0 0 0];
            app.UIAxes4.LineWidth = 0.25;
            app.UIAxes4.TitleHorizontalAlignment = 'left';
            app.UIAxes4.GridColor = [0.302 0.749 0.9294];
            app.UIAxes4.Box = 'on';
            app.UIAxes4.XGrid = 'on';
            app.UIAxes4.YGrid = 'on';
            app.UIAxes4.Layout.Row = 2;
            app.UIAxes4.Layout.Column = [1 23];
            app.UIAxes4.PickableParts = 'all';

            % Create UIAxes3_2
            app.UIAxes3_2 = uiaxes(app.GridLayout11);
            xlabel(app.UIAxes3_2, 'Time')
            ylabel(app.UIAxes3_2, 'K Overview')
            zlabel(app.UIAxes3_2, 'Z')
            app.UIAxes3_2.TickLength = [0.006 0.025];
            app.UIAxes3_2.GridLineStyle = '-.';
            app.UIAxes3_2.XColor = [0 0 0];
            app.UIAxes3_2.YColor = [0 0 0];
            app.UIAxes3_2.ZColor = [0 0 0];
            app.UIAxes3_2.LineWidth = 0.25;
            app.UIAxes3_2.Box = 'on';
            app.UIAxes3_2.XGrid = 'on';
            app.UIAxes3_2.YGrid = 'on';
            app.UIAxes3_2.Layout.Row = 3;
            app.UIAxes3_2.Layout.Column = [8 15];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.GridLayout11);
            xlabel(app.UIAxes3, 'Time')
            ylabel(app.UIAxes3, 'dT Overview')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.TickLength = [0.006 0.025];
            app.UIAxes3.GridLineStyle = '-.';
            app.UIAxes3.XColor = [0 0 0];
            app.UIAxes3.YColor = [0 0 0];
            app.UIAxes3.ZColor = [0 0 0];
            app.UIAxes3.LineWidth = 0.25;
            app.UIAxes3.Box = 'on';
            app.UIAxes3.XGrid = 'on';
            app.UIAxes3.YGrid = 'on';
            app.UIAxes3.Layout.Row = 3;
            app.UIAxes3.Layout.Column = [1 7];

            % Create DeletedTdataButton
            app.DeletedTdataButton = uibutton(app.GridLayout11, 'push');
            app.DeletedTdataButton.ButtonPushedFcn = createCallbackFcn(app, @DeletedTdataButtonPushed2, true);
            app.DeletedTdataButton.BackgroundColor = [0.9216 0.7765 0.7255];
            app.DeletedTdataButton.Layout.Row = 4;
            app.DeletedTdataButton.Layout.Column = [1 2];
            app.DeletedTdataButton.Text = 'Delete dT data';

            % Create UndoDeletionButton
            app.UndoDeletionButton = uibutton(app.GridLayout11, 'push');
            app.UndoDeletionButton.ButtonPushedFcn = createCallbackFcn(app, @UndoDeletionButtonPushed2, true);
            app.UndoDeletionButton.BackgroundColor = [0.851 0.902 0.902];
            app.UndoDeletionButton.Layout.Row = 4;
            app.UndoDeletionButton.Layout.Column = [3 4];
            app.UndoDeletionButton.Text = 'Undo Deletion ';

            % Create InterpolateButton
            app.InterpolateButton = uibutton(app.GridLayout11, 'push');
            app.InterpolateButton.BackgroundColor = [0.5961 0.8392 0.6392];
            app.InterpolateButton.Layout.Row = 5;
            app.InterpolateButton.Layout.Column = 6;
            app.InterpolateButton.Text = 'Interpolate';

            % Create DeleteAnchorButton
            app.DeleteAnchorButton = uibutton(app.GridLayout11, 'push');
            app.DeleteAnchorButton.BackgroundColor = [0.851 0.902 0.902];
            app.DeleteAnchorButton.Layout.Row = 5;
            app.DeleteAnchorButton.Layout.Column = [1 2];
            app.DeleteAnchorButton.Text = 'Delete Anchor';

            % Create SetAnchorButton
            app.SetAnchorButton = uibutton(app.GridLayout11, 'push');
            app.SetAnchorButton.BackgroundColor = [0.6431 0.898 0.9294];
            app.SetAnchorButton.Layout.Row = 5;
            app.SetAnchorButton.Layout.Column = [3 4];
            app.SetAnchorButton.Text = 'Set Anchor';

            % Create FinishEditingButton
            app.FinishEditingButton = uibutton(app.GridLayout11, 'push');
            app.FinishEditingButton.ButtonPushedFcn = createCallbackFcn(app, @FinishEditingButtonPushed2, true);
            app.FinishEditingButton.BackgroundColor = [0.8902 0.5922 0.1412];
            app.FinishEditingButton.FontColor = [0.9412 0.9412 0.9412];
            app.FinishEditingButton.Layout.Row = 1;
            app.FinishEditingButton.Layout.Column = [2 3];
            app.FinishEditingButton.Text = 'Finish Editing';

            % Create PreviousSensorButton
            app.PreviousSensorButton = uibutton(app.GridLayout11, 'push');
            app.PreviousSensorButton.ButtonPushedFcn = createCallbackFcn(app, @PreviousSensorButtonPushed2, true);
            app.PreviousSensorButton.BackgroundColor = [0.9804 0.5176 0.302];
            app.PreviousSensorButton.Layout.Row = 1;
            app.PreviousSensorButton.Layout.Column = 20;
            app.PreviousSensorButton.Text = 'Previous Sensor';

            % Create NextSensorButton
            app.NextSensorButton = uibutton(app.GridLayout11, 'push');
            app.NextSensorButton.ButtonPushedFcn = createCallbackFcn(app, @NextSensorButtonPushed2, true);
            app.NextSensorButton.BackgroundColor = [0.0431 0.7294 0.7176];
            app.NextSensorButton.Layout.Row = 1;
            app.NextSensorButton.Layout.Column = 22;
            app.NextSensorButton.Text = 'Next Sensor';

            % Create TextArea2
            app.TextArea2 = uitextarea(app.GridLayout11);
            app.TextArea2.Layout.Row = [4 5];
            app.TextArea2.Layout.Column = [11 23];

            % Create PlotDataButton
            app.PlotDataButton = uibutton(app.GridLayout11, 'push');
            app.PlotDataButton.ButtonPushedFcn = createCallbackFcn(app, @PlotDataButtonPushed2, true);
            app.PlotDataButton.BackgroundColor = [0.8118 0.5255 0.0745];
            app.PlotDataButton.FontColor = [1 1 1];
            app.PlotDataButton.Layout.Row = 1;
            app.PlotDataButton.Layout.Column = 18;
            app.PlotDataButton.Text = 'Plot Data';

            % Create ReversedataButton
            app.ReversedataButton = uibutton(app.GridLayout11, 'push');
            app.ReversedataButton.ButtonPushedFcn = createCallbackFcn(app, @ReversedataButtonPushed2, true);
            app.ReversedataButton.BackgroundColor = [0.8667 0.8902 0.702];
            app.ReversedataButton.Layout.Row = 4;
            app.ReversedataButton.Layout.Column = 6;
            app.ReversedataButton.Text = 'Reverse data';

            % Create UndoReverseButton
            app.UndoReverseButton = uibutton(app.GridLayout11, 'push');
            app.UndoReverseButton.ButtonPushedFcn = createCallbackFcn(app, @UndoReverseButtonPushed, true);
            app.UndoReverseButton.BackgroundColor = [0.851 0.902 0.902];
            app.UndoReverseButton.Layout.Row = 4;
            app.UndoReverseButton.Layout.Column = [7 9];
            app.UndoReverseButton.Text = 'Undo Reverse';

            % Create UndoInterpolateButton
            app.UndoInterpolateButton = uibutton(app.GridLayout11, 'push');
            app.UndoInterpolateButton.BackgroundColor = [0.5961 0.8392 0.6392];
            app.UndoInterpolateButton.Layout.Row = 5;
            app.UndoInterpolateButton.Layout.Column = [7 9];
            app.UndoInterpolateButton.Text = 'Undo Interpolate';

            % Create XDropDownLabel
            app.XDropDownLabel = uilabel(app.GridLayout11);
            app.XDropDownLabel.HorizontalAlignment = 'center';
            app.XDropDownLabel.Layout.Row = 1;
            app.XDropDownLabel.Layout.Column = 9;
            app.XDropDownLabel.Text = 'X';

            % Create XDropDown
            app.XDropDown = uidropdown(app.GridLayout11);
            app.XDropDown.Items = {};
            app.XDropDown.Layout.Row = 1;
            app.XDropDown.Layout.Column = [10 11];
            app.XDropDown.Value = {};

            % Create YDropDownLabel
            app.YDropDownLabel = uilabel(app.GridLayout11);
            app.YDropDownLabel.HorizontalAlignment = 'center';
            app.YDropDownLabel.Layout.Row = 1;
            app.YDropDownLabel.Layout.Column = 12;
            app.YDropDownLabel.Text = 'Y';

            % Create YDropDown
            app.YDropDown = uidropdown(app.GridLayout11);
            app.YDropDown.Items = {};
            app.YDropDown.Layout.Row = 1;
            app.YDropDown.Layout.Column = 13;
            app.YDropDown.Value = {};

            % Create SaveDataButton
            app.SaveDataButton = uibutton(app.GridLayout11, 'push');
            app.SaveDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButtonPushed2, true);
            app.SaveDataButton.BackgroundColor = [0.8902 0.5686 0.5686];
            app.SaveDataButton.FontColor = [1 1 1];
            app.SaveDataButton.Layout.Row = 1;
            app.SaveDataButton.Layout.Column = 6;
            app.SaveDataButton.Text = 'Save Data';

            % Create BrushDataButton
            app.BrushDataButton = uibutton(app.GridLayout11, 'push');
            app.BrushDataButton.BackgroundColor = [0.0314 0.498 0.6392];
            app.BrushDataButton.FontColor = [1 1 1];
            app.BrushDataButton.Layout.Row = 1;
            app.BrushDataButton.Layout.Column = [15 16];
            app.BrushDataButton.Text = 'Brush Data';

            % Create ModelTrainingTab
            app.ModelTrainingTab = uitab(app.TabGroup);
            app.ModelTrainingTab.Title = 'Model Training';
            app.ModelTrainingTab.BackgroundColor = [0.6902 0.7255 0.7608];

            % Create GridLayout9
            app.GridLayout9 = uigridlayout(app.ModelTrainingTab);
            app.GridLayout9.ColumnWidth = {62, 43, '2.22x', 62, '2.15x', '1.74x', 62, '3.48x', 62, '3.48x', '1x', 89, 102};
            app.GridLayout9.RowHeight = {35, 34, 31, 22, 22, 22, 22, '1x', 22, '4.68x'};
            app.GridLayout9.ColumnSpacing = 4.21429007393973;
            app.GridLayout9.RowSpacing = 3.72727272727273;
            app.GridLayout9.Padding = [4.21429007393973 3.72727272727273 4.21429007393973 3.72727272727273];

            % Create EditField_2
            app.EditField_2 = uieditfield(app.GridLayout9, 'text');
            app.EditField_2.Layout.Row = 2;
            app.EditField_2.Layout.Column = [1 11];

            % Create InputPathButton
            app.InputPathButton = uibutton(app.GridLayout9, 'push');
            app.InputPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.InputPathButton.Layout.Row = 1;
            app.InputPathButton.Layout.Column = [12 13];
            app.InputPathButton.Text = 'Input Path';

            % Create OutputPathButton
            app.OutputPathButton = uibutton(app.GridLayout9, 'push');
            app.OutputPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.OutputPathButton.Layout.Row = 2;
            app.OutputPathButton.Layout.Column = [12 13];
            app.OutputPathButton.Text = 'Output Path';

            % Create CheckBox
            app.CheckBox = uicheckbox(app.GridLayout9);
            app.CheckBox.Layout.Row = 4;
            app.CheckBox.Layout.Column = [1 2];

            % Create StartTrainingButton
            app.StartTrainingButton = uibutton(app.GridLayout9, 'state');
            app.StartTrainingButton.Text = 'Start Training';
            app.StartTrainingButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.StartTrainingButton.FontColor = [1 1 1];
            app.StartTrainingButton.Layout.Row = 4;
            app.StartTrainingButton.Layout.Column = 13;

            % Create StopTrainingButton
            app.StopTrainingButton = uibutton(app.GridLayout9, 'state');
            app.StopTrainingButton.Text = 'Stop Training';
            app.StopTrainingButton.BackgroundColor = [0.7216 0.4431 0.4235];
            app.StopTrainingButton.FontColor = [1 1 1];
            app.StopTrainingButton.Layout.Row = 5;
            app.StopTrainingButton.Layout.Column = 13;

            % Create ShowModelsButton
            app.ShowModelsButton = uibutton(app.GridLayout9, 'state');
            app.ShowModelsButton.Text = 'Show Models';
            app.ShowModelsButton.BackgroundColor = [0.7686 0.7647 0.5255];
            app.ShowModelsButton.Layout.Row = 6;
            app.ShowModelsButton.Layout.Column = 13;

            % Create CheckBox_2
            app.CheckBox_2 = uicheckbox(app.GridLayout9);
            app.CheckBox_2.Layout.Row = 5;
            app.CheckBox_2.Layout.Column = [1 2];

            % Create CheckBox_3
            app.CheckBox_3 = uicheckbox(app.GridLayout9);
            app.CheckBox_3.Layout.Row = 6;
            app.CheckBox_3.Layout.Column = [1 2];

            % Create MakePredictionsButton
            app.MakePredictionsButton = uibutton(app.GridLayout9, 'state');
            app.MakePredictionsButton.Text = 'Make Predictions';
            app.MakePredictionsButton.BackgroundColor = [0.0588 0.6 0.5647];
            app.MakePredictionsButton.FontColor = [1 1 1];
            app.MakePredictionsButton.Layout.Row = 7;
            app.MakePredictionsButton.Layout.Column = 13;

            % Create Tree
            app.Tree = uitree(app.GridLayout9);
            app.Tree.Layout.Row = [7 8];
            app.Tree.Layout.Column = [4 6];

            % Create LinearNode
            app.LinearNode = uitreenode(app.Tree);
            app.LinearNode.Text = 'Linear';

            % Create SimpleLinearModelNode
            app.SimpleLinearModelNode = uitreenode(app.LinearNode);
            app.SimpleLinearModelNode.Text = 'Simple Linear Model';

            % Create MultipleLinearModelNode
            app.MultipleLinearModelNode = uitreenode(app.LinearNode);
            app.MultipleLinearModelNode.Text = 'Multiple Linear Model';

            % Create RecurrentNeuralNetworksNode
            app.RecurrentNeuralNetworksNode = uitreenode(app.Tree);
            app.RecurrentNeuralNetworksNode.Text = 'Recurrent Neural Networks';

            % Create LSTMNode
            app.LSTMNode = uitreenode(app.RecurrentNeuralNetworksNode);
            app.LSTMNode.Text = 'LSTM';

            % Create BiLSTMNode
            app.BiLSTMNode = uitreenode(app.RecurrentNeuralNetworksNode);
            app.BiLSTMNode.Text = 'BiLSTM';

            % Create TextAreaLabel
            app.TextAreaLabel = uilabel(app.GridLayout9);
            app.TextAreaLabel.BackgroundColor = [0.149 0.149 0.149];
            app.TextAreaLabel.HorizontalAlignment = 'right';
            app.TextAreaLabel.FontColor = [1 1 1];
            app.TextAreaLabel.Layout.Row = 9;
            app.TextAreaLabel.Layout.Column = 1;
            app.TextAreaLabel.Text = 'Text Area';

            % Create TextArea
            app.TextArea = uitextarea(app.GridLayout9);
            app.TextArea.FontColor = [1 1 1];
            app.TextArea.BackgroundColor = [0.149 0.149 0.149];
            app.TextArea.Layout.Row = [9 10];
            app.TextArea.Layout.Column = [1 13];

            % Create EditFieldLabel
            app.EditFieldLabel = uilabel(app.GridLayout9);
            app.EditFieldLabel.HorizontalAlignment = 'right';
            app.EditFieldLabel.Layout.Row = 1;
            app.EditFieldLabel.Layout.Column = 1;
            app.EditFieldLabel.Text = 'Edit Field';

            % Create EditField
            app.EditField = uieditfield(app.GridLayout9, 'text');
            app.EditField.Layout.Row = 1;
            app.EditField.Layout.Column = [1 11];

            % Create EditField2Label
            app.EditField2Label = uilabel(app.GridLayout9);
            app.EditField2Label.HorizontalAlignment = 'right';
            app.EditField2Label.Layout.Row = 3;
            app.EditField2Label.Layout.Column = 1;
            app.EditField2Label.Text = 'Edit Field2';

            % Create EditField2
            app.EditField2 = uieditfield(app.GridLayout9, 'numeric');
            app.EditField2.Layout.Row = 3;
            app.EditField2.Layout.Column = [2 3];

            % Create EditField2_2Label
            app.EditField2_2Label = uilabel(app.GridLayout9);
            app.EditField2_2Label.HorizontalAlignment = 'right';
            app.EditField2_2Label.Layout.Row = 3;
            app.EditField2_2Label.Layout.Column = 4;
            app.EditField2_2Label.Text = 'Edit Field2';

            % Create EditField2_2
            app.EditField2_2 = uieditfield(app.GridLayout9, 'numeric');
            app.EditField2_2.Layout.Row = 3;
            app.EditField2_2.Layout.Column = [5 6];

            % Create EditField2_3Label
            app.EditField2_3Label = uilabel(app.GridLayout9);
            app.EditField2_3Label.HorizontalAlignment = 'right';
            app.EditField2_3Label.Layout.Row = 3;
            app.EditField2_3Label.Layout.Column = 7;
            app.EditField2_3Label.Text = 'Edit Field2';

            % Create EditField2_3
            app.EditField2_3 = uieditfield(app.GridLayout9, 'numeric');
            app.EditField2_3.Layout.Row = 3;
            app.EditField2_3.Layout.Column = 8;

            % Create ModelforpredictionDropDownLabel
            app.ModelforpredictionDropDownLabel = uilabel(app.GridLayout9);
            app.ModelforpredictionDropDownLabel.HorizontalAlignment = 'right';
            app.ModelforpredictionDropDownLabel.Layout.Row = 7;
            app.ModelforpredictionDropDownLabel.Layout.Column = [1 2];
            app.ModelforpredictionDropDownLabel.Text = 'Model for prediction';

            % Create ModelforpredictionDropDown
            app.ModelforpredictionDropDown = uidropdown(app.GridLayout9);
            app.ModelforpredictionDropDown.Items = {'One to one', 'One to all'};
            app.ModelforpredictionDropDown.Layout.Row = 7;
            app.ModelforpredictionDropDown.Layout.Column = 3;
            app.ModelforpredictionDropDown.Value = 'One to one';

            % Create EditField2_4Label
            app.EditField2_4Label = uilabel(app.GridLayout9);
            app.EditField2_4Label.HorizontalAlignment = 'right';
            app.EditField2_4Label.Layout.Row = 3;
            app.EditField2_4Label.Layout.Column = 9;
            app.EditField2_4Label.Text = 'Edit Field2';

            % Create EditField2_4
            app.EditField2_4 = uieditfield(app.GridLayout9, 'numeric');
            app.EditField2_4.Layout.Row = 3;
            app.EditField2_4.Layout.Column = 10;

            % Create Tree_2
            app.Tree_2 = uitree(app.GridLayout9);
            app.Tree_2.Layout.Row = [7 8];
            app.Tree_2.Layout.Column = [8 9];

            % Create PredictingVariablesNode
            app.PredictingVariablesNode = uitreenode(app.Tree_2);
            app.PredictingVariablesNode.Text = 'Predicting Variables';

            % Create TimeHoursandminutesNode
            app.TimeHoursandminutesNode = uitreenode(app.PredictingVariablesNode);
            app.TimeHoursandminutesNode.Text = 'Time (Hours and minutes)';

            % Create VPDNode
            app.VPDNode = uitreenode(app.PredictingVariablesNode);
            app.VPDNode.Text = 'VPD';

            % Create TemperatureNode
            app.TemperatureNode = uitreenode(app.PredictingVariablesNode);
            app.TemperatureNode.Text = 'Temperature';

            % Create PARNode
            app.PARNode = uitreenode(app.PredictingVariablesNode);
            app.PARNode.Text = 'PAR';

            % Create PrecipitationNode
            app.PrecipitationNode = uitreenode(app.PredictingVariablesNode);
            app.PrecipitationNode.Text = 'Precipitation';

            % Create LeafAreaIndexNode
            app.LeafAreaIndexNode = uitreenode(app.PredictingVariablesNode);
            app.LeafAreaIndexNode.Text = 'Leaf Area Index';

            % Create ResponseVariablesNode
            app.ResponseVariablesNode = uitreenode(app.Tree_2);
            app.ResponseVariablesNode.Text = 'Response Variable(s)';

            % Create KNode
            app.KNode = uitreenode(app.ResponseVariablesNode);
            app.KNode.Text = 'K';

            % Create FNode
            app.FNode = uitreenode(app.ResponseVariablesNode);
            app.FNode.Text = 'F';

            % Create ModelSelectionLabel
            app.ModelSelectionLabel = uilabel(app.GridLayout9);
            app.ModelSelectionLabel.Layout.Row = 6;
            app.ModelSelectionLabel.Layout.Column = [4 5];
            app.ModelSelectionLabel.Text = 'Model Selection';

            % Create VariableSelectionLabel
            app.VariableSelectionLabel = uilabel(app.GridLayout9);
            app.VariableSelectionLabel.Layout.Row = 6;
            app.VariableSelectionLabel.Layout.Column = 8;
            app.VariableSelectionLabel.Text = 'Variable Selection';

            % Create GapFillingTab
            app.GapFillingTab = uitab(app.TabGroup);
            app.GapFillingTab.Title = 'Gap Filling';
            app.GapFillingTab.BackgroundColor = [0.8 0.8 0.8];
            app.GapFillingTab.Scrollable = 'on';

            % Create GridLayout4
            app.GridLayout4 = uigridlayout(app.GapFillingTab);
            app.GridLayout4.ColumnWidth = {'6.18x', 145, '1.05x', 145, '1x', 134, '1x', 145, '5.92x'};
            app.GridLayout4.RowHeight = {29, '19.93x', '1x', '19.33x'};
            app.GridLayout4.ColumnSpacing = 1.3;
            app.GridLayout4.Padding = [1.3 10 1.3 10];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.GridLayout4);
            xlabel(app.UIAxes2, 'Time')
            ylabel(app.UIAxes2, 'K')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.TickLength = [0.006 0.025];
            app.UIAxes2.GridLineStyle = '-.';
            app.UIAxes2.XGrid = 'on';
            app.UIAxes2.YGrid = 'on';
            app.UIAxes2.Layout.Row = 2;
            app.UIAxes2.Layout.Column = [1 9];

            % Create UITable2
            app.UITable2 = uitable(app.GridLayout4);
            app.UITable2.ColumnName = '';
            app.UITable2.ColumnRearrangeable = 'on';
            app.UITable2.RowName = {};
            app.UITable2.ColumnSortable = true;
            app.UITable2.ColumnEditable = true;
            app.UITable2.Layout.Row = 4;
            app.UITable2.Layout.Column = [1 9];

            % Create ReplaceGapFilledDataButton
            app.ReplaceGapFilledDataButton = uibutton(app.GridLayout4, 'push');
            app.ReplaceGapFilledDataButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.ReplaceGapFilledDataButton.FontColor = [1 1 1];
            app.ReplaceGapFilledDataButton.Layout.Row = 1;
            app.ReplaceGapFilledDataButton.Layout.Column = 4;
            app.ReplaceGapFilledDataButton.Text = 'Replace Gap Filled Data';

            % Create UndoRepacementButton
            app.UndoRepacementButton = uibutton(app.GridLayout4, 'push');
            app.UndoRepacementButton.BackgroundColor = [1 1 1];
            app.UndoRepacementButton.FontColor = [0.4667 0.6745 0.1882];
            app.UndoRepacementButton.Layout.Row = 1;
            app.UndoRepacementButton.Layout.Column = 6;
            app.UndoRepacementButton.Text = 'UndoRepacement';

            % Create ViewGapFilledDataButton
            app.ViewGapFilledDataButton = uibutton(app.GridLayout4, 'push');
            app.ViewGapFilledDataButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.ViewGapFilledDataButton.FontColor = [1 1 1];
            app.ViewGapFilledDataButton.Layout.Row = 1;
            app.ViewGapFilledDataButton.Layout.Column = 8;
            app.ViewGapFilledDataButton.Text = 'View Gap Filled Data';

            % Create RawDataButton
            app.RawDataButton = uibutton(app.GridLayout4, 'push');
            app.RawDataButton.BackgroundColor = [0.8 0.8 0.8];
            app.RawDataButton.FontColor = [1 1 1];
            app.RawDataButton.Layout.Row = 1;
            app.RawDataButton.Layout.Column = 2;
            app.RawDataButton.Text = 'Raw Data';

            % Create CalculateWaterUseTab
            app.CalculateWaterUseTab = uitab(app.TabGroup);
            app.CalculateWaterUseTab.Title = 'Calculate Water Use';
            app.CalculateWaterUseTab.BackgroundColor = [0.8 0.8 0.8];
            app.CalculateWaterUseTab.Scrollable = 'on';

            % Create GridLayout8
            app.GridLayout8 = uigridlayout(app.CalculateWaterUseTab);
            app.GridLayout8.ColumnWidth = {'18.93x', 67, '13.1x', '1.37x', 67, '1x'};
            app.GridLayout8.RowHeight = {24, 23, 23, '1x'};
            app.GridLayout8.ColumnSpacing = 3.14285714285714;
            app.GridLayout8.RowSpacing = 6.8;
            app.GridLayout8.Padding = [3.14285714285714 6.8 3.14285714285714 6.8];

            % Create UIAxes6
            app.UIAxes6 = uiaxes(app.GridLayout8);
            xlabel(app.UIAxes6, 'DOY')
            ylabel(app.UIAxes6, 'Water Use Efficiency (g/kg)')
            zlabel(app.UIAxes6, 'Z')
            app.UIAxes6.TickLength = [0.006 0.025];
            app.UIAxes6.GridLineStyle = '-.';
            app.UIAxes6.Box = 'on';
            app.UIAxes6.XGrid = 'on';
            app.UIAxes6.YGrid = 'on';
            app.UIAxes6.Layout.Row = 4;
            app.UIAxes6.Layout.Column = [2 6];

            % Create UITable3
            app.UITable3 = uitable(app.GridLayout8);
            app.UITable3.ColumnName = '';
            app.UITable3.ColumnRearrangeable = 'on';
            app.UITable3.RowName = {};
            app.UITable3.ColumnSortable = true;
            app.UITable3.ColumnEditable = true;
            app.UITable3.Layout.Row = 4;
            app.UITable3.Layout.Column = 1;

            % Create EditField3
            app.EditField3 = uieditfield(app.GridLayout8, 'text');
            app.EditField3.Layout.Row = 1;
            app.EditField3.Layout.Column = [1 3];

            % Create EditField3_2
            app.EditField3_2 = uieditfield(app.GridLayout8, 'text');
            app.EditField3_2.Layout.Row = 2;
            app.EditField3_2.Layout.Column = [1 3];

            % Create InputButton
            app.InputButton = uibutton(app.GridLayout8, 'push');
            app.InputButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.InputButton.Layout.Row = 1;
            app.InputButton.Layout.Column = 5;
            app.InputButton.Text = 'Input';

            % Create OutputButton
            app.OutputButton = uibutton(app.GridLayout8, 'push');
            app.OutputButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.OutputButton.Layout.Row = 2;
            app.OutputButton.Layout.Column = 5;
            app.OutputButton.Text = 'Output';

            % Create CalculateButton
            app.CalculateButton = uibutton(app.GridLayout8, 'push');
            app.CalculateButton.BackgroundColor = [0.6353 0.0784 0.1843];
            app.CalculateButton.FontColor = [1 1 1];
            app.CalculateButton.Layout.Row = 3;
            app.CalculateButton.Layout.Column = 5;
            app.CalculateButton.Text = 'Calculate';

            % Create EditField3_3
            app.EditField3_3 = uieditfield(app.GridLayout8, 'text');
            app.EditField3_3.Layout.Row = 3;
            app.EditField3_3.Layout.Column = 1;

            % Create PlotButton
            app.PlotButton = uibutton(app.GridLayout8, 'push');
            app.PlotButton.BackgroundColor = [0 0.4471 0.7412];
            app.PlotButton.FontColor = [1 1 1];
            app.PlotButton.Layout.Row = 3;
            app.PlotButton.Layout.Column = 2;
            app.PlotButton.Text = 'Plot';

            % Create ContextMenu
            app.ContextMenu = uicontextmenu(app.SapFlowerUIFigure);

            % Create SmoothdataMenu
            app.SmoothdataMenu = uimenu(app.ContextMenu);
            app.SmoothdataMenu.Text = 'Smooth data';

            % Create WaveletTransformMenu
            app.WaveletTransformMenu = uimenu(app.SmoothdataMenu);
            app.WaveletTransformMenu.Text = 'Wavelet Transform';

            % Create BayesianFilteringMenu
            app.BayesianFilteringMenu = uimenu(app.SmoothdataMenu);
            app.BayesianFilteringMenu.Text = 'Bayesian Filtering';

            % Create DynamicTimeWarpingDTWMenu
            app.DynamicTimeWarpingDTWMenu = uimenu(app.SmoothdataMenu);
            app.DynamicTimeWarpingDTWMenu.Text = 'Dynamic Time Warping (DTW)';

            % Create KalmanFilterMenu
            app.KalmanFilterMenu = uimenu(app.SmoothdataMenu);
            app.KalmanFilterMenu.Text = 'Kalman Filter';

            % Create GaussianProcessRegressionMenu
            app.GaussianProcessRegressionMenu = uimenu(app.SmoothdataMenu);
            app.GaussianProcessRegressionMenu.Text = 'Gaussian Process Regression';

            % Create HiddenMarkovModelHMMMenu
            app.HiddenMarkovModelHMMMenu = uimenu(app.SmoothdataMenu);
            app.HiddenMarkovModelHMMMenu.Text = 'Hidden Markov Model (HMM)';

            % Create SavitzkyGolayFilterMenu
            app.SavitzkyGolayFilterMenu = uimenu(app.SmoothdataMenu);
            app.SavitzkyGolayFilterMenu.Text = 'Savitzky-Golay Filter';

            % Create SeasonalDecompositionofTimeSeriesSTLMenu
            app.SeasonalDecompositionofTimeSeriesSTLMenu = uimenu(app.SmoothdataMenu);
            app.SeasonalDecompositionofTimeSeriesSTLMenu.Text = 'Seasonal Decomposition of Time Series (STL)';

            % Create ExponentialMovingAverageEMAMenu
            app.ExponentialMovingAverageEMAMenu = uimenu(app.SmoothdataMenu);
            app.ExponentialMovingAverageEMAMenu.Text = 'Exponential Moving Average (EMA)';

            % Create SimpleMovingAverageSMAMenu
            app.SimpleMovingAverageSMAMenu = uimenu(app.SmoothdataMenu);
            app.SimpleMovingAverageSMAMenu.Text = 'Simple Moving Average (SMA)';

            % Create IsolationForestMenu
            app.IsolationForestMenu = uimenu(app.SmoothdataMenu);
            app.IsolationForestMenu.Text = 'Isolation Forest';

            % Create RecurrentNeuralNetworksRNNsMenu
            app.RecurrentNeuralNetworksRNNsMenu = uimenu(app.SmoothdataMenu);
            app.RecurrentNeuralNetworksRNNsMenu.Text = 'Recurrent Neural Networks (RNNs)';

            % Create QuantileRegressionMenu
            app.QuantileRegressionMenu = uimenu(app.SmoothdataMenu);
            app.QuantileRegressionMenu.Text = 'Quantile Regression';

            % Create EnableBrushingtoEditMenu
            app.EnableBrushingtoEditMenu = uimenu(app.ContextMenu);
            app.EnableBrushingtoEditMenu.Text = 'Enable Brushing to Edit';

            % Create AutoSmoothbasedondataMenu
            app.AutoSmoothbasedondataMenu = uimenu(app.ContextMenu);
            app.AutoSmoothbasedondataMenu.Text = 'Auto Smooth based on data';

            % Create ShowlegendMenu
            app.ShowlegendMenu = uimenu(app.ContextMenu);
            app.ShowlegendMenu.MenuSelectedFcn = createCallbackFcn(app, @ShowlegendMenuSelected, true);
            app.ShowlegendMenu.Text = 'Show legend';
            
            % Assign app.ContextMenu
            app.UIAxes4.ContextMenu = app.ContextMenu;

            % Create ContextMenu2
            app.ContextMenu2 = uicontextmenu(app.SapFlowerUIFigure);

            % Create ShowlegendMenu_2
            app.ShowlegendMenu_2 = uimenu(app.ContextMenu2);
            app.ShowlegendMenu_2.MenuSelectedFcn = createCallbackFcn(app, @ShowlegendMenu_2Selected, true);
            app.ShowlegendMenu_2.Text = 'Show legend';
            
            % Assign app.ContextMenu2
            app.UIAxes3.ContextMenu = app.ContextMenu2;

            % Create ContextMenu3
            app.ContextMenu3 = uicontextmenu(app.SapFlowerUIFigure);

            % Create ShowlegendMenu_3
            app.ShowlegendMenu_3 = uimenu(app.ContextMenu3);
            app.ShowlegendMenu_3.MenuSelectedFcn = createCallbackFcn(app, @ShowlegendMenu_3Selected, true);
            app.ShowlegendMenu_3.Text = 'Show legend';
            
            % Assign app.ContextMenu3
            app.UIAxes3_2.ContextMenu = app.ContextMenu3;

            % Create ContextMenu4
            app.ContextMenu4 = uicontextmenu(app.SapFlowerUIFigure);

            % Create ShowlegendMenu_4
            app.ShowlegendMenu_4 = uimenu(app.ContextMenu4);
            app.ShowlegendMenu_4.MenuSelectedFcn = createCallbackFcn(app, @ShowlegendMenu_4Selected, true);
            app.ShowlegendMenu_4.Text = 'Show legend';
            
            % Assign app.ContextMenu4
            app.UIAxes5.ContextMenu = app.ContextMenu4;

            % Create ContextMenu5
            app.ContextMenu5 = uicontextmenu(app.SapFlowerUIFigure);

            % Create CopyMenu
            app.CopyMenu = uimenu(app.ContextMenu5);
            app.CopyMenu.Text = 'Copy';
            
            % Assign app.ContextMenu5
            app.TextArea.ContextMenu = app.ContextMenu5;

            % Create ContextMenu6
            app.ContextMenu6 = uicontextmenu(app.SapFlowerUIFigure);

            % Create ShowLegendMenu
            app.ShowLegendMenu = uimenu(app.ContextMenu6);
            app.ShowLegendMenu.MenuSelectedFcn = createCallbackFcn(app, @ShowLegendMenuSelected, true);
            app.ShowLegendMenu.Text = 'Show Legend';
            
            % Assign app.ContextMenu6
            app.UIAxes6.ContextMenu = app.ContextMenu6;

            % Show the figure after all components are created
            app.SapFlowerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SapFlower_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SapFlowerUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.SapFlowerUIFigure)
        end
    end
end