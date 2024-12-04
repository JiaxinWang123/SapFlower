classdef SapFlower < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        SapFlowerUIFigure               matlab.ui.Figure
        FileMenu                        matlab.ui.container.Menu
        CreateNewMenu                   matlab.ui.container.Menu
        OpenFileMenu                    matlab.ui.container.Menu
        SaveMenu                        matlab.ui.container.Menu
        ExportKMenu                     matlab.ui.container.Menu
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
        DeleteSelectedDataMenu          matlab.ui.container.Menu
        ReverseSelectedDataMenu         matlab.ui.container.Menu
        UndoMenu                        matlab.ui.container.Menu
        UndoAllMenu                     matlab.ui.container.Menu
        ViewMenu                        matlab.ui.container.Menu
        DarkModeMenu                    matlab.ui.container.Menu
        LightModeMenu                   matlab.ui.container.Menu
        HelpMenu                        matlab.ui.container.Menu
        AboutMenu                       matlab.ui.container.Menu
        ManualMenu                      matlab.ui.container.Menu
        HomePageMenu                    matlab.ui.container.Menu
        GitHubMenu                      matlab.ui.container.Menu
        LatestVersionMenu               matlab.ui.container.Menu
        TrainingOptionsMenu             matlab.ui.container.Menu
        JiaxinWangMenu                  matlab.ui.container.Menu
        GridLayout                      matlab.ui.container.GridLayout
        TabGroup                        matlab.ui.container.TabGroup
        ProjectConfigurationTab         matlab.ui.container.Tab
        GridLayout16                    matlab.ui.container.GridLayout
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
        GridLayout13                    matlab.ui.container.GridLayout
        autoClean                       matlab.ui.control.Button
        YDropDown                       matlab.ui.control.DropDown
        YDropDownLabel                  matlab.ui.control.Label
        XDropDown                       matlab.ui.control.DropDown
        XDropDownLabel                  matlab.ui.control.Label
        SaveDataButton                  matlab.ui.control.Button
        UndoReverseButton               matlab.ui.control.Button
        ReverseDataButton               matlab.ui.control.Button
        PlotDataButton                  matlab.ui.control.Button
        TextArea2                       matlab.ui.control.TextArea
        NextSensorButton                matlab.ui.control.Button
        PreviousSensorButton            matlab.ui.control.Button
        FinishEditingButton             matlab.ui.control.Button
        UndoDeletionButton              matlab.ui.control.Button
        DeletedTdataButton              matlab.ui.control.Button
        UIAxes3                         matlab.ui.control.UIAxes
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes5                         matlab.ui.control.UIAxes
        ModelTrainingTab                matlab.ui.container.Tab
        GridLayout14                    matlab.ui.container.GridLayout
        ScaleDataCheckBox               matlab.ui.control.CheckBox
        SplitForValidationEditField     matlab.ui.control.NumericEditField
        SplitForValidationLabel         matlab.ui.control.Label
        NumberOfHiddenUnitsEditField    matlab.ui.control.NumericEditField
        NumberOfHiddenUnitsEditFieldLabel  matlab.ui.control.Label
        LowVariationThresholdEditField  matlab.ui.control.NumericEditField
        LowVariationThresholdEditFieldLabel  matlab.ui.control.Label
        HighVariationThresholdEditField  matlab.ui.control.NumericEditField
        HighVariationThresholdEditFieldLabel  matlab.ui.control.Label
        IQRThresholdMultiplierEditField  matlab.ui.control.NumericEditField
        IQRThresholdMultiplierEditFieldLabel  matlab.ui.control.Label
        WindowSizepointsEditField       matlab.ui.control.NumericEditField
        WindowSizepointsEditFieldLabel  matlab.ui.control.Label
        EffectiveEndDateDatePicker      matlab.ui.control.DatePicker
        EffectiveEndDateDatePickerLabel  matlab.ui.control.Label
        EffectiveStartDateDatePicker    matlab.ui.control.DatePicker
        EffectiveStartDateDatePickerLabel  matlab.ui.control.Label
        InitialLearningRateEditField    matlab.ui.control.NumericEditField
        InitialLearningRateEditFieldLabel  matlab.ui.control.Label
        ValidationFrequencyEditField    matlab.ui.control.NumericEditField
        ValidationFrequencyEditFieldLabel  matlab.ui.control.Label
        GradientThresholdEditField      matlab.ui.control.NumericEditField
        GradientThresholdEditFieldLabel  matlab.ui.control.Label
        EpochForTrainingEditField       matlab.ui.control.NumericEditField
        EpochForTrainingEditFieldLabel  matlab.ui.control.Label
        StartPredictingButton           matlab.ui.control.Button
        TextArea                        matlab.ui.control.TextArea
        AvailableTrainedModelsLabel     matlab.ui.control.Label
        Tree_5                          matlab.ui.container.Tree
        ModelsNode                      matlab.ui.container.TreeNode
        SensorsTree                     matlab.ui.container.CheckBoxTree
        SensorsNode                     matlab.ui.container.TreeNode
        SensorstobetrainedLabel         matlab.ui.control.Label
        SolverForNeuralNetworkLabel     matlab.ui.control.Label
        ListBox                         matlab.ui.control.ListBox
        VariableSelectionLabel          matlab.ui.control.Label
        ModelSelectionLabel             matlab.ui.control.Label
        EnvironmentalVariablesTree      matlab.ui.container.CheckBoxTree
        PredictingVariablesNode         matlab.ui.container.TreeNode
        TimeHoursandminutesNode         matlab.ui.container.TreeNode
        VPDNode                         matlab.ui.container.TreeNode
        TemperatureNode                 matlab.ui.container.TreeNode
        PARNode                         matlab.ui.container.TreeNode
        PrecipitationNode               matlab.ui.container.TreeNode
        LeafAreaIndexNode               matlab.ui.container.TreeNode
        ResponseVariablesNode           matlab.ui.container.TreeNode
        dTNode                          matlab.ui.container.TreeNode
        FNode                           matlab.ui.container.TreeNode
        KNode                           matlab.ui.container.TreeNode
        Tree_3                          matlab.ui.container.CheckBoxTree
        LinearNode                      matlab.ui.container.TreeNode
        SimpleLinearModelNode           matlab.ui.container.TreeNode
        MultipleLinearModelNode         matlab.ui.container.TreeNode
        TimeSeriesNode                  matlab.ui.container.TreeNode
        ARXNode                         matlab.ui.container.TreeNode
        ARMAXNode                       matlab.ui.container.TreeNode
        RecurrentNeuralNetworksNode     matlab.ui.container.TreeNode
        GRUNode                         matlab.ui.container.TreeNode
        LSTMNode                        matlab.ui.container.TreeNode
        BiLSTMNode                      matlab.ui.container.TreeNode
        RandomForestNode                matlab.ui.container.TreeNode
        StartTrainingButton             matlab.ui.control.Button
        OutputPathButton                matlab.ui.control.Button
        Output                          matlab.ui.control.EditField
        GapFillingTab                   matlab.ui.container.Tab
        GridLayout17                    matlab.ui.container.GridLayout
        ExportTypeDropDown              matlab.ui.control.DropDown
        ExportDailyWaterUse             matlab.ui.control.Button
        TextArea_2                      matlab.ui.control.TextArea
        ExportFvaluesButton             matlab.ui.control.Button
        ExportKvaluesButton             matlab.ui.control.Button
        PredictedDataLabel              matlab.ui.control.Label
        RawDataLabel                    matlab.ui.control.Label
        TabGroup2                       matlab.ui.container.TabGroup
        ViewRawDataTab                  matlab.ui.container.Tab
        UIAxes6_4                       matlab.ui.control.UIAxes
        ViewPredictedDataTab            matlab.ui.container.Tab
        UIAxes6_2                       matlab.ui.control.UIAxes
        ViewGapFilledDataTab            matlab.ui.container.Tab
        UIAxes6_3                       matlab.ui.control.UIAxes
        ViewKvaluesTab                  matlab.ui.container.Tab
        UIAxes6_5                       matlab.ui.control.UIAxes
        ViewFvaluesTab                  matlab.ui.container.Tab
        UIAxes6_6                       matlab.ui.control.UIAxes
        ViewDailyHourlySapFluxDensityTab  matlab.ui.container.Tab
        UIAxes6_7                       matlab.ui.control.UIAxes
        Tree                            matlab.ui.container.CheckBoxTree
        Node                            matlab.ui.container.TreeNode
        Node_2                          matlab.ui.container.TreeNode
        Node2                           matlab.ui.container.TreeNode
        UITable5_2                      matlab.ui.control.Table
        UITable5                        matlab.ui.control.Table
        RawDataButton                   matlab.ui.control.Button
        PredictedDataButton             matlab.ui.control.Button
        GapFillButton                   matlab.ui.control.Button
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
        ProjectDescription
        TimeStepIncrement
        MinSapFlow
        MaxSapFlow
        MaxChangePerInterval
        DeleteDataPointsLessThan
        PARThreshold
        VPDTime
        VPDThreshold
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
        hBaselinePlot % Handle for the baseline plot
        Config
        History
        HistoryIndex
        DOY 
        VPD 
        temperature
        humidity
        par
        tod
        waitbarHandle  % Handle to the waitbar
        XTrain
        YTrain
        XValidation
        YValidation
        CleanedData
        GapFilledData
        PreviousTableData
        TrainedSensors = {} % To store the list of sensors that have been trained
        PredictedSensors = {} % To store the list of sensors that have been predicted
        UIFigure
        LastAction % A variable to store the last action ('delete' or 'inverse')
        ActionHistory = {}; % A cell array to store the history of actions
        projectLoaded = false; % Tracks if a project has been loaded
        isEdited = false;    % Tracks if the data has been edited

    end

%% Startup %%
methods (Access = public)
    function StartupFcn(app)
        % Get screen size (primary monitor)
        screenSize = get(0, 'ScreenSize'); % [left, bottom, width, height]
        
        % Get app window size
        appWidth = app.SapFlowerUIFigure.Position(3);
        appHeight = app.SapFlowerUIFigure.Position(4);
        
        % Calculate centered position
        centerX = (screenSize(3) - appWidth) / 2;
        centerY = (screenSize(4) - appHeight) / 2;
        
        % Set the app position
        app.SapFlowerUIFigure.Position = [centerX, centerY, appWidth, appHeight];
    end

end

%% Gapfilling and saving %%
methods (Access = public)

    function saveGapFilledData(app, gapFilledData, checkedNodes, timestampColName)
        try
            % Ensure the output path is valid
            checkOutputPath(app);
            
            % Get the output directory for saving gap-filled data
            outputPath = fullfile(app.Output.Value, 'Gapfilled');
            if ~isfolder(outputPath)
                mkdir(outputPath);
            end
            
            % Ensure TIMESTAMP, VPD, and PAR_Den_Avg columns are present
            timestampData = app.UITable5.Data.(timestampColName);
            
            if ismember('VPD', app.UITable5.Data.Properties.VariableNames)
                vpdData = app.UITable5.Data.VPD;
            else
                vpdData = nan(height(app.UITable5.Data), 1); % If VPD doesn't exist, fill with NaNs
            end
            
            if ismember('PAR_Den_Avg', app.UITable5.Data.Properties.VariableNames)
                parData = app.UITable5.Data.PAR_Den_Avg;
            else
                parData = nan(height(app.UITable5.Data), 1); % If PAR_Den_Avg doesn't exist, fill with NaNs
            end
            
            % Iterate over each sensor
            for i = 1:length(checkedNodes)
                sensorName = checkedNodes(i).Text;
                
                % Check if sensor's gap-filled data is present in gapFilledData
                if ismember(sensorName, gapFilledData.Properties.VariableNames)
                    sensorGapFilledData = gapFilledData{:, sensorName};
                    
                    % Create a new table with the correct columns
                    combinedData = table(timestampData, vpdData, parData, sensorGapFilledData, ...
                        'VariableNames', {'TIMESTAMP', 'VPD', 'PAR_Den_Avg', sensorName});
                    
                    % Generate a unique filename with a timestamp
                    timestamp3 = datestr(now, 'yyyymmdd_HHMMSS');
                    gapFilledFilename = fullfile(outputPath, sprintf('GapFilled_%s_%s.csv', sensorName, timestamp3));
                    
                    % Save the combined data to a CSV file
                    writetable(combinedData, gapFilledFilename);
                    
                    % Update the TextArea with the save status
                    app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('Gap-filled data saved to %s', gapFilledFilename)}];
                    scroll(app.TextArea_2, "bottom");
                    drawnow; % Ensure the TextArea updates immediately
                else
                    % If the sensor data is missing, notify the user
                    app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('Sensor %s data is missing in GapFilledData.', sensorName)}];
                    scroll(app.TextArea_2, "bottom");
                    drawnow;
                end
            end
        catch ME
            % Handle any errors and display a message to the user
            errordlg(sprintf('An error occurred while saving gap-filled data: %s', ME.message), 'Error');
            app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('Error saving gap-filled data: %s', ME.message)}];
            scroll(app.TextArea_2, "bottom");
            drawnow;
        end
    end

    function gapFillAndPlotData(app, sensorName, modelType)
        try
            % Ensure the output path is valid
            checkOutputPath(app);
            
            % Define file paths
            outputPath = app.Output.Value;
            rawFilename = fullfile(outputPath, 'CleanedData', sprintf('Cleaned_%s.csv', sensorName));
            predictedFilename = fullfile(outputPath, 'PredictedData', sprintf('Predicted_%s_%s.csv', modelType, sensorName));
        
            % Ensure both files exist
            if ~isfile(rawFilename)
                error('Raw data file for sensor %s not found.', sensorName);
            end
            if ~isfile(predictedFilename)
                error('Predicted data file for sensor %s using model %s not found.', sensorName, modelType);
            end
        
            % Load the raw and predicted data
            rawData = readtable(rawFilename);
            predictedData = readtable(predictedFilename);
        
            % Align the data by TIMESTAMP and fill gaps in raw data using predictions
            gapFilledData = rawData;
            gapIdx = isnan(gapFilledData{:, 2});
            gapFilledData{gapIdx, 2} = predictedData.PredictedSapflow(gapIdx);
        
            % Plot the raw and gap-filled data on UIAxes6_3
            cla(app.UIAxes6_3); % Clear the axes before plotting
            plot(app.UIAxes6_3, rawData.TIMESTAMP, rawData{:, 2}, 'b', 'DisplayName', 'Raw Data');
            hold(app.UIAxes6_3, 'on');
            plot(app.UIAxes6_3, gapFilledData.TIMESTAMP, gapFilledData{:, 2}, 'r', 'DisplayName', 'Gap-Filled Data');
            hold(app.UIAxes6_3, 'off');
            xlabel(app.UIAxes6_3, 'TIMESTAMP');
            ylabel(app.UIAxes6_3, sensorName);
            title(app.UIAxes6_3, sprintf('Gap-Filled Data for Sensor %s', sensorName));
            legend(app.UIAxes6_3, 'show');
        
            % Ensure the Gapfilled directory exists
            gapfilledDir = fullfile(outputPath, 'Gapfilled');
            if ~isfolder(gapfilledDir)
                mkdir(gapfilledDir);
            end
        
            % Save the gap-filled data with a unique filename
            timestamp2 = datestr(now, 'yyyymmdd_HHMMSS');
            gapFilledFilename = fullfile(gapfilledDir, sprintf('Gapfilled_%s_%s.csv', sensorName, timestamp2));
            writetable(gapFilledData, gapFilledFilename);
            
            % Notify the user
            app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('Gap-filled data saved to %s', gapFilledFilename)}];
            scroll(app.TextArea_2, "bottom");
            drawnow; % Ensure the TextArea updates immediately
    
        catch ME
            % Handle any errors and display a message to the user
            errordlg(sprintf('An error occurred while processing data for sensor %s: %s', sensorName, ME.message), 'Error');
            app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('Error processing data for sensor %s: %s', sensorName, ME.message)}];
            scroll(app.TextArea_2, "bottom");
            drawnow;
        end
    end

end

%% Plotting for gapfilling %%
methods (Access = public)

    function updateSensorTree(app)
        try
            % Clear existing nodes in the app.Tree
            delete(app.Tree.Children);
    
            % Add the top-level node
            sensorNode = uitreenode(app.Tree, 'Text', 'Sensors', 'NodeData', 'Sensors');
    
            % Add each trained sensor as a child node
            for i = 1:length(app.TrainedSensors)
                uitreenode(sensorNode, 'Text', app.TrainedSensors{i}, 'NodeData', app.TrainedSensors{i});
            end
    
            % Expand the tree to show all nodes
            expand(app.Tree);
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while updating the sensor tree: %s', ME.message), 'Error', 'error');
            app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('An error occurred while updating the sensor tree: %s', ME.message)}];
            scroll(app.TextArea_2, "bottom");
            drawnow;
        end
    end


    function predictedData = loadPredictedData(app, sensorName, modelType)
        try
            % Ensure modelType is a string
            if iscell(modelType)
                modelType = modelType{1}; % Extract the string from the cell array
            end
            
            % Construct the filename for the predicted data
            outputPath = app.Output.Value;
            predictedFilename = fullfile(outputPath, 'PredictedData', sprintf('Predicted_%s_%s.csv', modelType, sensorName));
            
            % Check if the file exists
            if ~isfile(predictedFilename)
                error('Predicted data file for sensor %s using model %s not found.', sensorName, modelType);
            end
            
            % Load the predicted data from the file
            predictedData = readtable(predictedFilename);
            
            % Rename the PredictedSapflow column to be specific to the sensor
            predictedData.Properties.VariableNames{'PredictedSapflow'} = sprintf('PredictedSapflow_%s', sensorName);
        
        catch ME
            % If an error occurs, display a message box and rethrow the error
            msgbox(sprintf('An error occurred while loading predicted data: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end


    function modelTypes = deriveModelTypes(app, sensorName)
        try
            % Get the output path for predicted data
            outputPath = fullfile(app.Output.Value, 'PredictedData');
            
            % Get the list of all predicted data files in the folder for the given sensor
            predictedFiles = dir(fullfile(outputPath, sprintf('Predicted_*_%s.csv', sensorName)));
            
            % Check if any predicted data files exist for the sensor
            if isempty(predictedFiles)
                error('No predicted data files found for sensor %s.', sensorName);
            end
            
            % Extract the model types from the filenames
            modelTypes = {};
            for k = 1:length(predictedFiles)
                predictedFilename = predictedFiles(k).name;
                tokens = regexp(predictedFilename, 'Predicted_(.*?)_', 'tokens');
                if ~isempty(tokens)
                    modelTypes{end+1} = tokens{1}{1}; % Append each found model type
                end
            end
            
            % Remove duplicates
            modelTypes = unique(modelTypes);
            
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while deriving model types for sensor %s: %s', sensorName, ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    function rawData = loadRawData(app, sensorName)
        try
            % Construct the filename for the raw data
            outputPath = app.Output.Value;
            rawFilename = fullfile(outputPath, 'CleanedData', sprintf('Cleaned_%s.csv', sensorName));
            
            % Check if the file exists
            if ~isfile(rawFilename)
                error('Raw data file for sensor %s not found.', sensorName);
            end
            
            % Load the raw data from the file
            rawData = readtable(rawFilename);
        
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while loading raw data for sensor %s: %s', sensorName, ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    function updateTrainedAndPredictedSensors(app, sensorName)
        try
            % Add sensor to the list of trained and predicted sensors
            if isempty(app.TrainedSensors)
                app.TrainedSensors = {sensorName};
            else
                if ~ismember(sensorName, app.TrainedSensors)
                    app.TrainedSensors{end+1} = sensorName;
                end
            end
        
            % Update the tree with the latest sensors
            updateSensorTree(app);
    
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while updating trained sensors for %s: %s', sensorName, ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

end

%% Automating data cleaning %%
methods (Access = public)

    function plotExampleCleanedSapflow(app)
        % Function to detect and remove outlier windows and windows with high or low variation
        function [cleanedData, outlierMask, highVariationMask, lowVariationMask] = removeOutlierWindowsAndInconsistencies(sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow)
            % Check if the input data is valid
            if isempty(sensorData) || ~isvector(sensorData)
                error('Invalid sensor data: data must be a non-empty vector.');
            end
    
            if windowSize <= 0 || ~isnumeric(windowSize)
                error('Invalid window size: it must be a positive numeric value.');
            end
    
            if thresholdMultiplier <= 0 || ~isnumeric(thresholdMultiplier)
                error('Invalid threshold multiplier: it must be a positive numeric value.');
            end
    
            if variationThresholdHigh <= 0 || variationThresholdLow <= 0
                error('Invalid variation thresholds: both must be positive numeric values.');
            end
    
            n = length(sensorData);
            outlierMask = false(n, 1);
            highVariationMask = false(n, 1);
            lowVariationMask = false(n, 1);
    
            % Precompute the overall IQR for the dataset
            Q1 = quantile(sensorData, 0.25);
            Q3 = quantile(sensorData, 0.75);
            IQR = Q3 - Q1;
    
            % Create a rolling window mean and standard deviation
            windowMeans = movmean(sensorData, windowSize, 'omitnan');
            windowStds = movstd(sensorData, windowSize, 'omitnan');
    
            % Identify outliers based on window means
            outlierMask(windowMeans < Q1 - thresholdMultiplier * IQR | windowMeans > Q3 + thresholdMultiplier * IQR) = true;
    
            % Identify high variation windows
            highVariationMask(windowStds > variationThresholdHigh) = true;
    
            % Identify low variation windows
            lowVariationMask(windowStds < variationThresholdLow) = true;
    
            % Mark all inconsistent data (outliers, high variation, low variation) as NaN
            cleanedData = sensorData;
            cleanedData(outlierMask | highVariationMask | lowVariationMask) = NaN;
        end
    
        % Function to remove short runs of consistent data points
        function cleanedData = removeShortRuns(sensorData, minRunLength)
            % Input validation
            if isempty(sensorData) || ~isvector(sensorData)
                error('Invalid sensor data: data must be a non-empty vector.');
            end
    
            if minRunLength <= 0 || ~isnumeric(minRunLength)
                error('Invalid minimum run length: it must be a positive numeric value.');
            end
    
            % Identify runs of consecutive non-NaN data
            isNonNaN = ~isnan(sensorData);
            runBounds = diff([false; isNonNaN; false]);
            runStartIdx = find(runBounds == 1);
            runEndIdx = find(runBounds == -1) - 1;
    
            % Remove short runs
            runLengths = runEndIdx - runStartIdx + 1;
            shortRuns = runLengths < minRunLength;
            cleanedData = sensorData;
            for idx = find(shortRuns)'
                cleanedData(runStartIdx(idx):runEndIdx(idx)) = NaN;
            end
        end
    
        % Main function logic
        % Extract the data from the UITable
        data = app.UITable4.Data;
    
        % Check if data is empty or if TIMESTAMP is missing
        if isempty(data) || ~any(strcmp(data.Properties.VariableNames, 'TIMESTAMP'))
            disp('Error: Data is empty or TIMESTAMP column is missing.');
            return;
        end
    
        % Identify sapflow columns (those starting with 'B1' or 'B2')
        sensorColumns = find(startsWith(data.Properties.VariableNames, {'B1', 'B2'}), 1);
    
        % Check if any sapflow columns were found
        if isempty(sensorColumns)
            disp('Error: No sapflow columns (starting with B1 or B2) found in the data.');
            return;
        end
    
        % Get the currently selected sensor from the dropdown or another UI component
        currentSensor = app.YDropDown.Value;  % Assuming YSensorDropDown holds the current sensor selection
        sensorIdx = find(strcmp(data.Properties.VariableNames, currentSensor));
    
        % Check if the selected sensor is valid
        if isempty(sensorIdx)
            disp('Error: Selected sensor data is not available.');
            return;
        end
    
        % Extract parameters from the app interface
        windowSize = app.WindowSizepointsEditField.Value;  % User-defined window size
        thresholdMultiplier = app.IQRThresholdMultiplierEditField.Value;  % User-defined IQR threshold multiplier
        variationThresholdHigh = app.HighVariationThresholdEditField.Value;  % User-defined high variation threshold
        variationThresholdLow = app.LowVariationThresholdEditField.Value;  % User-defined low variation threshold
    
        % Minimum run length for consistent points
        minRunLength = app.DeleteDataPointsLessThanEditField.Value;
    
        % Pre-filter sapflow data
        sensorData = data{:, sensorIdx}; % Use the current sensor column based on user selection
    
        % Check if sensor data is empty
        if isempty(sensorData)
            disp('Error: Sensor data is empty.');
            return;
        end
    
        % Apply the filtering
        sensorData(sensorData > app.MaxSapFlowEditField.Value) = NaN; % Exclude values greater than max sapflow
        sensorData(sensorData < 0) = 0;     % Set negative values to 0
    
        % Detect and remove outliers, high variation, and low variation windows
        [cleanedData, outlierMask, highVariationMask, lowVariationMask] = removeOutlierWindowsAndInconsistencies(sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow);
    
        % Remove short runs of consistent data points
        cleanedData = removeShortRuns(cleanedData, minRunLength);
    
        % Plot the data
        figure;
        hold on;
    
        % Plot the original data
        plot(data.TIMESTAMP, sensorData, 'b.', 'DisplayName', 'Original Data');
    
        % Plot different types of outliers
        if any(outlierMask)
            plot(data.TIMESTAMP(outlierMask), sensorData(outlierMask), 'rx', 'DisplayName', 'Outlier Windows');
        end
    
        if any(highVariationMask)
            plot(data.TIMESTAMP(highVariationMask), sensorData(highVariationMask), 'mo', 'DisplayName', 'High Variation Windows');
        end
    
        if any(lowVariationMask)
            plot(data.TIMESTAMP(lowVariationMask), sensorData(lowVariationMask), 'gs', 'DisplayName', 'Low Variation Windows');
        end
    
        % Plot the cleaned data
        cleanedDataIdx = ~isnan(cleanedData);
        plot(data.TIMESTAMP(cleanedDataIdx), cleanedData(cleanedDataIdx), 'k.', 'DisplayName', 'Cleaned Data');
    
        xlabel('Time');
        ylabel('Sapflow');
        title(sprintf('Outliers and Cleaned Data for Sensor %s', currentSensor));
        legend('show');
        hold off;
    end


end

%% Load trained model and make predictions %%
methods (Access = public)

    function makePredictionsUsingModel(app)
        try
            % Get the selected model from the tree
            selectedModelNode = app.ModelsNode.SelectedNodes;
            
            if isempty(selectedModelNode)
                uialert(app.UIFigure, 'No model selected.', 'Error');
                return;
            end
            
            % Load the selected model
            modelFile = selectedModelNode.NodeData;
            loadedModel = load(modelFile);
            net = loadedModel.net;
            
            % Ask the user for the prediction horizon
            answer = app.WindowSizepointsEditField.Value;
            if isempty(answer)
                uialert(app.UIFigure, 'Prediction horizon not specified.', 'Error');
                return;
            end
            horizon = str2double(answer{1});
            if isnan(horizon) || horizon <= 0
                uialert(app.UIFigure, 'Invalid prediction horizon specified.', 'Error');
                return;
            end
            
            % Use the current data or load new data
            useCurrentData = uiconfirm(app.UIFigure, 'Use current data for prediction?', 'Data Selection', ...
                'Options', {'Yes', 'No'}, 'DefaultOption', 1);
            
            if strcmp(useCurrentData, 'Yes')
                data = app.UITable4.Data;
            else
                [file, path] = uigetfile({'*.csv;*.xlsx'}, 'Select Data File');
                if isequal(file, 0)
                    uialert(app.UIFigure, 'No data file selected.', 'Error');
                    return;
                end
                dataFilePath = fullfile(path, file);
                data = readtable(dataFilePath);
            end
            
            % Prepare data for prediction based on selected environmental variables
            selectedEnvVars = app.PredictingVariablesNode.CheckedNodes;
            if isempty(selectedEnvVars)
                uialert(app.UIFigure, 'No environmental variables selected for prediction.', 'Error');
                return;
            end
            
            X = [];
            for node = selectedEnvVars'
                X = [X, data.(node.Text)];
            end
            X = X';  % Transpose X for prediction
            
            % Make predictions based on the model and horizon
            predictions = predict(net, X, horizon)';
            
            % Display predictions
            figure;
            plot(data.TIMESTAMP, predictions, 'r--', 'DisplayName', 'Predicted Data');
            xlabel('Time');
            ylabel('Sapflow');
            title(sprintf('Predicted Sapflow Data for %d Steps Ahead', horizon));
            legend('show');
            
            % Save or export the prediction results
            exportPredictions(app, data, predictions);
            
        catch ME
            % Handle errors during prediction
            uialert(app.UIFigure, ['Error during prediction: ', ME.message], 'Error');
        end
    end


    function exportPredictions(app, data, predictions)
        try
            % Ask the user if they want to save the predictions
            saveChoice = uiconfirm(app.UIFigure, 'Would you like to save the prediction results?', 'Save Predictions', ...
                'Options', {'Yes', 'No'}, 'DefaultOption', 1);
            
            if strcmp(saveChoice, 'Yes')
                % Prompt the user to specify the file name and location
                [file, path] = uiputfile({'*.csv', 'CSV Files (*.csv)'; '*.xlsx', 'Excel Files (*.xlsx)'}, 'Save Prediction Results As');
                
                if isequal(file, 0)
                    uialert(app.UIFigure, 'No file selected for saving.', 'Warning');
                    return;
                end
                
                % Save the prediction results
                predictionData = data;
                predictionData.Predicted_Sapflow = predictions;
                writetable(predictionData, fullfile(path, file));
                uialert(app.UIFigure, 'Prediction results saved successfully.', 'Success');
            end
        catch ME
            % Handle errors during the saving process
            uialert(app.UIFigure, ['Error saving predictions: ', ME.message], 'Error');
        end
    end

end

%% Model Training and Prediction %%
methods (Access = public)

    function checkOutputPath(app)
        try
            % Check if the user has set a valid output path
            outputPath = app.Output.Value; % Assuming app.Output is an EditField for output path
            
            if isempty(outputPath) || ~isfolder(outputPath)
                error('Please set a valid output path in the Output field.');
            end
            
            % Create subdirectories if they don't exist
            if ~isfolder(fullfile(outputPath, 'CleanedData'))
                mkdir(fullfile(outputPath, 'CleanedData'));
            end
            if ~isfolder(fullfile(outputPath, 'TrainedModels'))
                mkdir(fullfile(outputPath, 'TrainedModels'));
            end
            if ~isfolder(fullfile(outputPath, 'PredictedData'))
                mkdir(fullfile(outputPath, 'PredictedData'));
            end
    
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while checking the output path: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    function saveTrainedModel(app, modelType, sensorName, model, predictingVariableNames, scalingParams)
        try
            % Check if output path is valid
            checkOutputPath(app);
            
            formattedSensorName = sensorName; 
            outputPath = app.Output.Value; 
            modelFilename = fullfile(outputPath, 'TrainedModels', sprintf('Trained_%s_Model_%s.mat', modelType, formattedSensorName));
    
            % Create a structure to save the model and predicting variables
            modelData.model = model;  % Store the trained model
            modelData.predictingVariables = predictingVariableNames;  % Store predicting variables
    
            % Optionally include scaling parameters
            if nargin == 6  % Check if scaling parameters are passed
                modelData.scalingParams = scalingParams;  % Store scaling params
            end
    
            % Save the structure to a .mat file
            save(modelFilename, 'modelData');
            disp(['Model saved to ', modelFilename]);
    
            % Update the tree with the saved model
            modelNode = uitreenode(app.ModelsNode, 'Text', modelFilename, 'NodeData', modelFilename);
            expand(app.ModelsNode);
    
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while saving the trained model: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end


    function savePredictedDataWithVPDIndex(app, predictions, predictingVariableNames, validIdx, sensorName, modelType)
        try
            % Check if output path is valid
            checkOutputPath(app);
    
            % Convert predictions to a column vector if necessary
            if isrow(predictions)
                predictions = predictions';
            end
    
            % Initialize the table with the predictions
            predictedDataTable = table(predictions, 'VariableNames', {'PredictedSapflow'});
    
            % Load the trained model and check for scaling parameters
            modelData = loadTrainedModel(app, modelType, sensorName);
            
            if isfield(modelData, 'scalingParams')
                scalingParams = modelData.scalingParams;  % If scaling was used during training
            else
                scalingParams = struct();  % No scaling was used
            end
    
            % Check if VPD is in the predicting variables
            if ismember('VPD', predictingVariableNames)
                indexVariableName = 'VPD';
            else
                % If VPD is not available, use the first predictor as the index
                indexVariableName = predictingVariableNames{1};
            end
    
            % Add the index data (VPD or first predictor) to the table
            indexData = app.UITable4.Data.(indexVariableName)(validIdx);
    
            % Reverse scaling (unscale) for the index data if it was scaled during training
            if isfield(scalingParams, indexVariableName)
                indexData = (indexData * scalingParams.(indexVariableName).sigma) + scalingParams.(indexVariableName).mu;
            end
    
            predictedDataTable.(indexVariableName) = indexData(1:length(predictions));  % Ensure the size matches predictions
    
            % Add the TIMESTAMP and other environmental variables to the table
            timestampData = app.UITable4.Data.TIMESTAMP(validIdx);
            predictedDataTable.TIMESTAMP = timestampData(1:length(predictions));  % Ensure the size matches predictions
    
            % Process each predicting variable, scale, and reverse the scaling if necessary
            for j = 1:length(predictingVariableNames)
                columnName = predictingVariableNames{j};
                if ~strcmp(columnName, indexVariableName)  % Skip the index variable
                    sampledEnvData = app.UITable4.Data.(columnName)(validIdx);
    
                    % Apply scaling to the environmental data (if it was scaled during training)
                    if isfield(scalingParams, columnName)
                        sampledEnvData = (sampledEnvData - scalingParams.(columnName).mu) / scalingParams.(columnName).sigma;
                    end
    
                    % Align the environmental data with the prediction size
                    if size(sampledEnvData, 1) > size(predictions, 1)
                        sampledEnvData = sampledEnvData(1:size(predictions, 1));  % Truncate to match prediction size
                    elseif size(sampledEnvData, 1) < size(predictions, 1)
                        sampledEnvData(size(predictions, 1), 1) = NaN;  % Pad with NaNs if shorter
                    end
    
                    % Reverse scaling (unscale) the environmental data
                    if isfield(scalingParams, columnName)
                        sampledEnvData = (sampledEnvData * scalingParams.(columnName).sigma) + scalingParams.(columnName).mu;
                    end
    
                    % Add the aligned environmental data to the table
                    predictedDataTable.(columnName) = sampledEnvData;
                end
            end
    
            % Reverse scaling for predicted sapflow if it was scaled during training
            if isfield(scalingParams, 'Sapflow')
                predictions = (predictions * scalingParams.Sapflow.sigma) + scalingParams.Sapflow.mu;
            end
    
            % Add the (unscaled) predictions to the predictedDataTable
            predictedDataTable.PredictedSapflow = predictions;
    
            % Save the predicted data to a CSV file in the PredictedData folder
            outputPath = app.Output.Value; 
            outputFilename = fullfile(outputPath, 'PredictedData', sprintf('Predicted_%s_%s.csv', modelType, sensorName));
            writetable(predictedDataTable, outputFilename);
            app.TextArea.Value = [app.TextArea.Value; ...
                sprintf('Predicted data saved to %s\n', outputFilename)];
            scroll(app.TextArea, "bottom");
            drawnow; % Ensure the TextArea updates immediately
    
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while saving the predicted data: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end


    % Function to clean and train sapflow model
    function cleanAndTrainSapflowModel(app)
        % Clear the TextArea before new output
        app.TextArea.Value = {'Starting the training process...'};
        scroll(app.TextArea, 'bottom');
        drawnow;
    
        try
            % Check if the user has set a valid output path
            checkOutputPath(app);
    
            % Check if UITable4 data was edited since the last training or cleaning
            if isfield(app, 'PreviousTableData') && ~isempty(app.PreviousTableData)
                if isequal(app.UITable4.Data, app.PreviousTableData)
                    app.TextArea.Value = [app.TextArea.Value; {'No changes detected in the data. Skipping cleaning and retraining...'}];
                    scroll(app.TextArea, 'bottom');
                    drawnow;
                    return; % Skip further processing if no changes are detected
                else
                    app.TextArea.Value = [app.TextArea.Value; {'Changes detected in the data. Proceeding with cleaning and retraining...'}];
                    scroll(app.TextArea, 'bottom');
                    drawnow;
                end
            end
    
            % Determine the date range to use
            if isempty(app.EffectiveStartDateDatePicker.Value) || isempty(app.EffectiveEndDateDatePicker.Value)
                % If either date picker is not set, use the full range of the data
                segmentedData = app.UITable4.Data;
            else
                % Otherwise, segment the data based on the user-defined date range
                startDate = app.EffectiveStartDateDatePicker.Value;
                endDate = app.EffectiveEndDateDatePicker.Value;
                segmentedData = app.UITable4.Data(app.UITable4.Data.TIMESTAMP >= startDate & app.UITable4.Data.TIMESTAMP <= endDate, :);
    
                if isempty(segmentedData)
                    % If no data is found within the user-defined date range, use the full range of the data
                    app.TextArea.Value = [app.TextArea.Value; {'No data available within the selected date range. Using the full data range.'}];
                    scroll(app.TextArea, 'bottom');
                    segmentedData = app.UITable4.Data;
                end
            end
    
            % Get the checked sensors from the app
            checkedSensorNodes = app.SensorsTree.CheckedNodes;
    
            % Ensure at least one sensor is selected
            if isempty(checkedSensorNodes)
                error('No sensors selected for training.');
            end
    
            % Get the sensor names based on the selected sensors
            selectedSensorNames = {checkedSensorNodes.Text};
    
            % Get the sensor columns based on the selected sensors
            sensorColumns = find(ismember(segmentedData.Properties.VariableNames, selectedSensorNames));
    
            % Initialize timing and progress tracking
            numSensors = length(sensorColumns);
            startTime = tic;
    
            % Prepare to store mean and std for feature scaling
            scalingParams = struct();
    
            % Check if the user wants to scale the data
            shouldScale = app.ScaleDataCheckBox.Value;  % Retrieve the user's choice (checkbox or toggle)
    
            % Check if the data has already been cleaned and stored for these sensors
            data = segmentedData;
            cleanedDataAvailable = false(1, numSensors);
    
            if isfield(app, 'CleanedData') && ~isempty(app.CleanedData)
                cleanedDataAvailable = ismember(selectedSensorNames, app.CleanedData.Properties.VariableNames);
                if all(cleanedDataAvailable)
                    data = app.CleanedData;  % Use the already cleaned data
                    app.TextArea.Value = [app.TextArea.Value; {'Using previously cleaned data. Skipping data cleaning...'}];
                    scroll(app.TextArea, 'bottom');
                    drawnow;
                end
            end
    
            % Perform cleaning if any sensor needs cleaning
            if ~all(cleanedDataAvailable)
                app.TextArea.Value = [app.TextArea.Value; {'Cleaning the data...'}];
                drawnow; % Ensure the TextArea updates immediately
    
                % Parameters for outlier and variation detection (derived from app interface)
                windowSize = app.WindowSizepointsEditField.Value; 
                thresholdMultiplier = app.IQRThresholdMultiplierEditField.Value; 
                variationThresholdHigh = app.HighVariationThresholdEditField.Value;
                variationThresholdLow = app.LowVariationThresholdEditField.Value; 
                minRunLength = app.DeleteDataPointsLessThanEditField.Value;
    
                % Pre-filter sapflow data: sapflow > 1.5 is excluded, and negative sapflow is set to 0
                for sensorIndex = 1:numSensors
                    if cleanedDataAvailable(sensorIndex)
                        continue; % Skip cleaning for already cleaned sensors
                    end
    
                    sensorName = selectedSensorNames{sensorIndex};
                    sensorColumn = sensorColumns(sensorIndex);
    
                    % Apply filtering and cleaning
                    sensorData = data{:, sensorColumn};
                    cleanedData = filterAndCleanData(app, sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow, minRunLength);
    
                    % Get the TIMESTAMP, VPD, and PAR columns
                    timestampData = data.TIMESTAMP;
                    vpdData = data.VPD;
                    parData = data.PAR_Den_Avg;  % Replace 'PAR' with the actual variable name if different
    
                    % Create a table with the cleaned data, TIMESTAMP, VPD, and PAR
                    combinedTable = table(timestampData, cleanedData, vpdData, parData, ...
                        'VariableNames', {'TIMESTAMP', sensorName, 'VPD', 'PAR_Den_Avg'});
    
                    % Save the combined table for the cleaned data
                    outputPath = app.Output.Value;
                    cleanedFilename = fullfile(outputPath, 'CleanedData', sprintf('Cleaned_%s.csv', sensorName));
                    writetable(combinedTable, cleanedFilename);
    
                    app.TextArea.Value = [app.TextArea.Value; {sprintf('Cleaned data for sensor %s saved to %s', sensorName, cleanedFilename)}];
                    drawnow; % Ensure the TextArea updates immediately
    
                    % Update progress and estimated time remaining
                    elapsedTime = toc(startTime);
                    avgTimePerSensor = elapsedTime / sensorIndex;
                    remainingTime = avgTimePerSensor * (numSensors - sensorIndex);
                    progressText = sprintf('Cleaning sensor %d of %d (%.2f%% complete). Elapsed time: %.2fs, Estimated time remaining: %.2fs', ...
                        sensorIndex, numSensors, (sensorIndex / numSensors) * 100, elapsedTime, remainingTime);
                    app.TextArea.Value = [app.TextArea.Value; {progressText}];
                    scroll(app.TextArea, 'bottom');
                    drawnow;
                end
    
                % Store the cleaned data in app properties for future use
                app.CleanedData = data;
            end
    
            % Ensure at least one sensor is selected for training
            if isempty(sensorColumns)
                error('No valid sensors found in the cleaned data for training.');
            end
    
            % Determine which model type is selected from app.Tree_3
            checkedModelNodes = app.Tree_3.CheckedNodes;
    
            % Ensure only one model type is selected
            if isempty(checkedModelNodes)
                error('No model type selected.');
            elseif length(checkedModelNodes) > 1
                error('Multiple model types selected. Please select only one.');
            end
    
            % Determine the selected model type
            modelType = checkedModelNodes(1).Text;
    
            % Get all checked nodes from the EnvironmentalVariablesTree
            allCheckedNodes = app.EnvironmentalVariablesTree.CheckedNodes;
    
            % Filter out only the nodes that are under the Predicting Variables node
            predictingCheckedNodes = [];
            for j = 1:length(allCheckedNodes)
                % Check if the parent node is PredictingVariablesNode
                if strcmp(allCheckedNodes(j).Parent.Text, 'Predicting Variable(s)')
                    predictingCheckedNodes = [predictingCheckedNodes; allCheckedNodes(j)];
                end
            end
    
            % Ensure at least one predicting variable is selected
            if isempty(predictingCheckedNodes)
                error('No predicting variables selected.');
            end
    
            % Iterate over each selected sensor for training
            for sensorIndex = 1:numSensors
                sensorName = selectedSensorNames{sensorIndex};
                sensorColumn = sensorColumns(sensorIndex);
    
                % Filter the data to get valid indices (non-missing Y and X values)
                validIdx = ~isnan(data{:, sensorColumn}) & data{:, sensorColumn} > 0;
    
                % Ensure there are enough valid data points for splitting
                if sum(validIdx) < 2
                    error('Not enough valid data points for training and validation split.');
                end
    
                % Create a cell array to store the names of the predicting variables
                predictingVariableNames = cell(length(predictingCheckedNodes), 1);
                X = []; % Initialize feature matrix
                for j = 1:length(predictingCheckedNodes)
                    node = predictingCheckedNodes(j);
                    columnData = data.(node.Text)(validIdx);
    
                    % Store the name of the predicting variable
                    predictingVariableNames{j} = node.Text;
    
                    % Process the data for each variable
                    if isdatetime(columnData)
                        hourData = hour(columnData);
                        hourOneHot = oneHotEncodeHour(app, hourData);
                        X = [X, hourOneHot];
                    else
                        if shouldScale
                            % Apply feature scaling using zscore
                            [scaledData, mu, sigma] = zscore(columnData); 
                            scalingParams.(node.Text).mu = mu;  % Save the mean
                            scalingParams.(node.Text).sigma = sigma;  % Save the std deviation
                            X = [X, scaledData];  % Append scaled data
                        else
                            X = [X, columnData];  % Use unscaled data
                        end
                    end
                end
    
                % Ensure there are valid data points after filtering
                if isempty(X)
                    error('No valid data points found after filtering.');
                end
    
                Y = data{validIdx, sensorColumn};
    
                % Split the data into training and validation sets
                validationSplit = app.SplitForValidationEditField.Value / 100;
                cv = cvpartition(length(Y), 'HoldOut', validationSplit);
    
                % Set properties for the training and validation data
                app.XTrain = X(cv.training, :);
                app.YTrain = Y(cv.training);
                app.XValidation = X(cv.test, :);
                app.YValidation = Y(cv.test, :);
    
                % Train the selected model type
                model = trainSelectedModel(app, modelType, size(app.XTrain, 2));
    
                % Save the trained model along with the predicting variable names and scaling params (if scaling is applied)
                if shouldScale
                    saveTrainedModel(app, modelType, sensorName, model, predictingVariableNames, scalingParams);
                else
                    saveTrainedModel(app, modelType, sensorName, model, predictingVariableNames);  % Without scaling params
                end
    
                % Validate the model
                validateModel(app, modelType, model, sensorName);
    
                % Update progress and estimated time remaining for training
                elapsedTime = toc(startTime);
                avgTimePerSensor = elapsedTime / sensorIndex;
                remainingTime = avgTimePerSensor * (numSensors - sensorIndex);
                progressText = sprintf('Training and validating sensor %d of %d (%.2f%% complete). Elapsed time: %.2fs, Estimated time remaining: %.2fs', ...
                    sensorIndex, numSensors, (sensorIndex / numSensors) * 100, elapsedTime, remainingTime);
                app.TextArea.Value = [app.TextArea.Value; {progressText}];
                scroll(app.TextArea, 'bottom');
                drawnow;
            end
    
            % Select the effective period and plot the segmented data
            plotSegmentedData(app, data, sensorColumns);
    
            % Store the current state of UITable4.Data as PreviousTableData for future comparisons
            app.PreviousTableData = app.UITable4.Data;
    
            app.TextArea.Value = [app.TextArea.Value; {'Data cleaning, model training, and validation complete.'}];
            scroll(app.TextArea, 'bottom');
            drawnow;
    
        catch ME
            % Handle any errors that occur during the training process
            errorMessage = sprintf('Error occurred: %s', ME.message);
            app.TextArea.Value = [app.TextArea.Value; {errorMessage}];
            scroll(app.TextArea, 'bottom');
            drawnow; % Ensure the error is shown
            rethrow(ME); % Optionally rethrow the error if you want to stop execution
        end
    end

    function modelData = loadTrainedModel(app, modelType, sensorName)
        try
            formattedSensorName = sensorName; % No need to change the sensor name format
            modelFilename = sprintf('Trained_%s_Model_%s.mat', modelType, formattedSensorName);
            
            % Debugging: Display the filename and path
            disp(['Loading model from: ', fullfile(app.Output.Value, 'TrainedModels', modelFilename)]);
            
            % Check if the file exists
            if exist(fullfile(app.Output.Value, 'TrainedModels', modelFilename), 'file')
                loadedData = load(fullfile(app.Output.Value, 'TrainedModels', modelFilename));  % Load the MAT file
                if isfield(loadedData, 'modelData')
                    modelData = loadedData.modelData;  % Access the modelData structure
                else
                    error('The loaded file does not contain modelData.');
                end
            else
                error('Model file %s not found.', modelFilename);
            end
        
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while loading the trained model: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    % Load sensors tree
    function loadSensorsTree(app)
        try
            % Identify sapflow sensor columns
            sensorColumns = app.SapFlowCols;
    
            % Clear the existing tree (if any)
            delete(app.SensorsTree.Children);
            
            % Add the top-level node
            sensorsNode = uitreenode(app.SensorsTree, 'Text', 'Sensors', 'NodeData', 'Sensors');
            
            % Initialize an array to store the sensor nodes
            sensorNodes = gobjects(length(sensorColumns), 1);
            
            % Add each sensor as a child node
            for i = 1:length(sensorColumns)
                % Add a tree node item for each sensor
                sensorNodes(i) = uitreenode(sensorsNode, 'Text', sensorColumns{i}, 'NodeData', sensorColumns{i});
            end
            
            % Expand the tree to show all nodes
            expand(app.SensorsTree);
            
            % Set all nodes as checked
            app.SensorsTree.CheckedNodes = sensorNodes;
            
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while loading the sensors tree: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end


    function loadEnvironmentalVariablesTree(app)
        try
            % Get all column names from the UITable
            columnNames = app.UITable4.ColumnName;
        
            % Identify potential environmental columns from the loaded data
            % Exclude any columns that are known to be sapflow sensors
            potentialEnvColumns = setdiff(columnNames, app.SapFlowCols);
            
            % Check if "VPD" is already present in the envColumns
            if ~ismember('VPD', columnNames)
                % Prompt the user to select the temperature and humidity columns
                temperatureCol = menu('Select the Temperature Column:', potentialEnvColumns{:});
                humidityCol = menu('Select the Humidity Column:', potentialEnvColumns{:});
                
                % Extract the temperature and humidity data
                app.temperature = app.UITable4.Data.(potentialEnvColumns{temperatureCol});
                app.humidity = app.UITable4.Data.(potentialEnvColumns{humidityCol});
                
                % Calculate VPD (Vapor Pressure Deficit)
                app.VPD = (1 - app.humidity / 100) .* 0.6108 .* exp((17.27 .* app.temperature) ./ (app.temperature + 237.3));
                
                % Add "VPD" to the table data and update column names
                app.UITable4.Data.VPD = app.VPD;
                columnNames{end+1} = 'VPD';  % Add VPD to column names
                
                % Also update app.EnvMetaCols if needed
                app.EnvMetaCols{end+1} = 'VPD';
            end
        
            % Clear the existing tree (if any)
            delete(app.EnvironmentalVariablesTree.Children);
        
            % Add the top-level node for environmental variables
            envNode = uitreenode(app.EnvironmentalVariablesTree, 'Text', 'Predicting Variable(s)', 'NodeData', 'Predicting Variables');
        
            % Initialize an array to store the environmental nodes
            envColumns = app.EnvMetaCols;  % Assuming envColumns are stored in app.EnvMetaCols
            envNodes = gobjects(length(envColumns), 1);
        
            % Add each environmental variable as a child node
            for i = 1:length(envColumns)
                envNodes(i) = uitreenode(envNode, 'Text', envColumns{i}, 'NodeData', envColumns{i});
            end
        
            % Add the top-level node for response variables
            responseNode = uitreenode(app.EnvironmentalVariablesTree, 'Text', 'Response Variable(s)', 'NodeData', 'Response Variables');
        
            % Add child nodes under "Response Variable(s)"
            app.dTNode = uitreenode(responseNode, 'Text', 'dT', 'NodeData', 'dT');
            app.KNode = uitreenode(responseNode, 'Text', 'K', 'NodeData', 'K');
            app.FNode = uitreenode(responseNode, 'Text', 'F', 'NodeData', 'F');
        
            % Expand the tree to show all nodes
            expand(app.EnvironmentalVariablesTree);
        
            % Set VPD and dT as checked by default
            vpdNode = envNodes(strcmp(envColumns, 'VPD')); % Find the VPD node
            app.EnvironmentalVariablesTree.CheckedNodes = [vpdNode, app.dTNode];
            
        catch ME
            % Handle any unexpected errors
            msgbox(sprintf('An error occurred while loading the environmental variables tree: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    % Function to perform one-hot encoding of hour
    function hourOneHot = oneHotEncodeHour(~,hourColumn)
        % Initialize the one-hot matrix with zeros
        numHours = 24;
        hourOneHot = zeros(length(hourColumn), numHours);
        
        % Set the corresponding hour column to 1
        for i = 1:length(hourColumn)
            hourIndex = hourColumn(i) + 1; % Add 1 because MATLAB indices start from 1
            hourOneHot(i, hourIndex) = 1;
        end
    end

    % Function to filter and clean the sapflow data
    function cleanedData = filterAndCleanData(app, sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow, minRunLength)
        % Remove outlier windows and inconsistent data
        [sensorData, ~, ~, ~] = app.removeOutlierWindowsAndInconsistencies(sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow);
    
        % Remove short runs of consistent data points
        cleanedData = app.removeShortRuns(sensorData, minRunLength);
    end

    function model = trainSelectedModel(app, modelType, numPredictors)
        try
            % Update app.TextArea with model type and training start message
            app.TextArea.Value = [app.TextArea.Value; sprintf('Training %s model...\n', modelType)];
            scroll(app.TextArea, 'bottom');
            drawnow;
            
            % Train the model based on the selected type
            switch modelType
                case 'BiLSTM'
                    model = trainBiLSTMModel(app);
                case 'LSTM'
                    model = trainLSTMModel(app);  % LSTM model training
                case 'GRU'
                    model = trainGRUModel(app);  % GRU model training
                case 'Random Forest'
                    model = trainRandomForestModel(app);  % Random Forest model training
                case 'Simple Linear Model'
                    model = fitlm(app.XTrain, app.YTrain);
                    % Output model structure and statistics
                    displayLinearModelStats(app, model);
                case 'Multiple Linear Model'
                    model = fitlm(app.XTrain, app.YTrain);
                    % Output model structure and statistics
                    displayLinearModelStats(app, model);
                case 'ARX'
                    % ARX model training with manual missing data handling
                    na = 1;
                    nb = ones(1, numPredictors);
                    nk = zeros(1, numPredictors);
    
                    % Manually handle missing data
                    XTrainCleaned = fillmissing(app.XTrain, 'linear');
                    YTrainCleaned = fillmissing(app.YTrain, 'linear');
    
                    % Create iddata object with cleaned data
                    arxData = iddata(YTrainCleaned, XTrainCleaned);
                    model = arx(arxData, [na nb nk]);
                case 'ARMAX'
                    % ARMAX model training with manual missing data handling
                    na = 1;
                    nb = ones(1, numPredictors);
                    nc = 1;
                    nk = zeros(1, numPredictors);
    
                    % Manually handle missing data
                    XTrainCleaned = fillmissing(app.XTrain, 'linear');
                    YTrainCleaned = fillmissing(app.YTrain, 'linear');
    
                    % Create iddata object with cleaned data
                    armaxData = iddata(YTrainCleaned, XTrainCleaned);
                    model = armax(armaxData, [na nb nc nk]);
                otherwise
                    error('Unsupported model type.');
            end
            
            % Update app.TextArea with training completion message
            app.TextArea.Value = [app.TextArea.Value; sprintf('%s model training completed.\n', modelType)];
            scroll(app.TextArea, 'bottom');
            drawnow;
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; sprintf('Error during %s model training: %s\n', modelType, ME.message)];
            msgbox(sprintf('An error occurred during %s model training: %s', modelType, ME.message), 'Error', 'error');
            scroll(app.TextArea, 'bottom');
            drawnow;
            rethrow(ME);
        end
    end


    function displayLinearModelStats(app, model)
        try
            % Get the model formula
            formula = model.Formula;
            formulaText = sprintf('Linear regression model:\n    %s\n\n', formula.char);
        
            % Get the estimated coefficients table
            coefTable = model.Coefficients;
        
            % Convert the coefficient table to a readable string
            coefText = sprintf('Estimated Coefficients:\n');
            coefText = [coefText, sprintf('%25s %15s %12s %15s\n', ' ', 'Estimate', 'SE', 'tStat', 'pValue')];
            for i = 1:size(coefTable, 1)
                coefText = [coefText, sprintf('%25s %15.5f %12.5f %12.5f %15.5e\n', ...
                    coefTable.Properties.RowNames{i}, coefTable.Estimate(i), ...
                    coefTable.SE(i), coefTable.tStat(i), coefTable.pValue(i))];
            end
            
            % Combine and output the final text to app.TextArea
            finalText = ['Saved Model:\n\n', formulaText, coefText];
            app.TextArea.Value = [app.TextArea.Value; {finalText}];
            drawnow;
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; {sprintf('Error displaying linear model statistics: %s\n', ME.message)}];
            scroll(app.TextArea, 'bottom');
            msgbox(sprintf('An error occurred while displaying linear model statistics: %s', ME.message), 'Error', 'error');
            drawnow;
        end
    end


    % Function to train GRU model
    function net = trainGRUModel(app)
        inputSize = size(app.XTrain, 2); % Number of predictors
        numHiddenUnits = app.NumberOfHiddenUnitsEditField.Value;
        numResponses = 1;
        maxEpochs = app.EpochForTrainingEditField.Value;
        initialLearnRate = app.InitialLearningRateEditField.Value;
        solver = app.ListBox.Value;
        gradientThreshold = app.GradientThresholdEditField.Value;
        validationFrequency = app.ValidationFrequencyEditField.Value;
        
        layers = [ ...
            sequenceInputLayer(inputSize)
            gruLayer(numHiddenUnits, 'OutputMode', 'sequence')
            fullyConnectedLayer(numResponses)
            regressionLayer];
        
        % Custom output function to update app.TextArea
        function stop = trainingOutputCallback(info)
            stop = false; % Continue training
            message = sprintf('Epoch: %d, Loss: %.4f\n', ...
                info.Epoch, info.TrainingLoss);
            app.TextArea.Value = [app.TextArea.Value; message];
            scroll(app.TextArea, "bottom");
            drawnow; % Update the TextArea in real-time
        end
    
        options = trainingOptions(solver, ...
            'MaxEpochs', maxEpochs, ...
            'GradientThreshold', gradientThreshold, ...
            'InitialLearnRate', initialLearnRate, ...
            'ValidationData', {app.XValidation', app.YValidation'}, ...
            'ValidationFrequency', validationFrequency, ...
            'Verbose', false, ...
            'OutputFcn', @trainingOutputCallback, ... % Custom callback function
            'Plots', 'none', ...
            'OutputNetwork', 'best-validation-loss');
        
        net = trainNetwork(app.XTrain', app.YTrain', layers, options);
    end

    % Function to train BiLSTM model
    function net = trainBiLSTMModel(app)
        inputSize = size(app.XTrain, 2); % Number of predictors
        numHiddenUnits = app.NumberOfHiddenUnitsEditField.Value;
        numResponses = 1;
        maxEpochs = app.EpochForTrainingEditField.Value;
        initialLearnRate = app.InitialLearningRateEditField.Value;
        solver = app.ListBox.Value;
        gradientThreshold = app.GradientThresholdEditField.Value;
        validationFrequency = app.ValidationFrequencyEditField.Value;
        
        layers = [ ...
            sequenceInputLayer(inputSize)
            bilstmLayer(numHiddenUnits, 'OutputMode', 'sequence')
            fullyConnectedLayer(numResponses)
            regressionLayer];
        
        % Custom output function to update app.TextArea
        function stop = trainingOutputCallback(info)
            stop = false; % Continue training
            message = sprintf('Epoch: %d, Loss: %.4f\n', ...
                info.Epoch,  info.TrainingLoss);
            app.TextArea.Value = [app.TextArea.Value; message];
            scroll(app.TextArea, 'bottom');
            drawnow; % Update the TextArea in real-time
        end
    
        options = trainingOptions(solver, ...
            'MaxEpochs', maxEpochs, ...
            'GradientThreshold', gradientThreshold, ...
            'InitialLearnRate', initialLearnRate, ...
            'ValidationData', {app.XValidation', app.YValidation'}, ...
            'ValidationFrequency', validationFrequency, ...
            'Verbose', false, ...
            'OutputFcn', @trainingOutputCallback, ... % Custom callback function
            'Plots', 'none', ...
            'OutputNetwork', 'best-validation-loss');
        
        net = trainNetwork(app.XTrain', app.YTrain', layers, options);
        % Update app.TextArea with LSTM training completion message
    end

    % Function to train an LSTM model
    function net = trainLSTMModel(app)
        inputSize = size(app.XTrain, 2); % Number of predictors
        numHiddenUnits = app.NumberOfHiddenUnitsEditField.Value;
        numResponses = 1;
        maxEpochs = app.EpochForTrainingEditField.Value;
        initialLearnRate = app.InitialLearningRateEditField.Value;
        solver = app.ListBox.Value;
        gradientThreshold = app.GradientThresholdEditField.Value;
        validationFrequency = app.ValidationFrequencyEditField.Value;
        
        layers = [ ...
            sequenceInputLayer(inputSize)
            lstmLayer(numHiddenUnits, 'OutputMode', 'sequence')
            fullyConnectedLayer(numResponses)
            regressionLayer];

        % Custom output function to update app.TextArea
        function stop = trainingOutputCallback(info)
            stop = false; % Continue training
            message = sprintf('Epoch: %d, Loss: %.4f\n', ...
                info.Epoch, info.TrainingLoss);
            app.TextArea.Value = [app.TextArea.Value; message];
            scroll(app.TextArea, 'bottom');
            drawnow; % Update the TextArea in real-time
        end
        
        options = trainingOptions(solver, ...
            'MaxEpochs', maxEpochs, ...
            'GradientThreshold', gradientThreshold, ...
            'InitialLearnRate', initialLearnRate, ...
            'ValidationData', {app.XValidation', app.YValidation'}, ...
            'ValidationFrequency', validationFrequency, ...
            'Verbose', false, ...
            'OutputFcn', @trainingOutputCallback, ... % Custom callback function
            'Plots', 'none', ...
            'OutputNetwork', 'best-validation-loss');
        
        net = trainNetwork(app.XTrain', app.YTrain', layers, options);

    end


    function model = trainRandomForestModel(app)
    
        % Train Random Forest Model
        model = fitrensemble(app.XTrain, app.YTrain, 'Method', 'Bag', 'NumLearningCycles', app.EpochForTrainingEditField.Value, 'Learners', 'tree');
    
        disp('Random Forest model trained successfully.');
    end


    % Function to validate the model
    function validateModel(app, modelType, model, sensorName)
        try
            % Ensure there are valid data points in the validation set
            if isempty(app.XValidation)
                error('No valid data points found for validation.');
            end
    
            % Initialize the predictions variable
            predictions = [];
    
            % Make predictions based on the model type
            switch modelType
                case 'BiLSTM'
                    predictions = predict(model, app.XValidation');
                case 'LSTM'
                    predictions = predict(model, app.XValidation');
                case 'GRU'
                    predictions = predict(model, app.XValidation');
                case 'Random Forest'
                    predictions = predict(model, app.XValidation);  % Random Forest does not need transposing
                case {'Simple Linear Model', 'Multiple Linear Model'}
                    predictions = predict(model, app.XValidation);
                case {'ARX', 'ARMAX'}
                    % Create an iddata object for validation
                    valData = iddata(app.YValidation, app.XValidation);
                    predictions = predict(model, valData, 1);  % 1-step ahead prediction
                    predictions = predictions.OutputData;      % Extract the output data
                otherwise
                    error('Unsupported model type.');
            end
    
            % Ensure no negative values in the predictions
            predictions(predictions < 0) = 0;
    
            % Reshape YValidation and predictions to ensure they are vectors
            app.YValidation = app.YValidation(:);  % Convert to column vector if not already
            predictions = predictions(:);          % Convert to column vector if not already
    
            % Debugging step: Check the size of the predictions and validation set
            disp(size(app.YValidation));  % Should be [n, 1] where n is the number of data points
            disp(size(predictions));      % Should be [n, 1]
    
            % Ensure both YValidation and predictions are the same size
            if length(app.YValidation) ~= length(predictions)
                error('Mismatch in length between predictions and actual values');
            end
    
            % Calculate the prediction error
            predictionError = app.YValidation - predictions;
    
            % Calculate summary statistics
            mae = mean(abs(predictionError));  % Mean Absolute Error (scalar)
            rmse = sqrt(mean(predictionError.^2));  % Root Mean Square Error (scalar)
    
            % Debugging step: Confirm MAE and RMSE are scalar
            disp(mae);
            disp(rmse);
    
            % Append the new MAE and RMSE to the existing text in TextArea
            summaryText = sprintf('Sensor %s - MAE: %.4f, RMSE: %.4f', sensorName, mae, rmse);
            if isempty(app.TextArea.Value)
                app.TextArea.Value = {summaryText};  % First entry
            else
                app.TextArea.Value = [app.TextArea.Value; {summaryText}];  % Append new summary
            end
            scroll(app.TextArea, 'bottom');
            drawnow; % Ensure the TextArea updates immediately
    
            % Plot true vs predicted for validation
            figure;
            plot(app.YValidation, 'b', 'DisplayName', 'True Data');
            hold on;
            plot(predictions, 'r--', 'DisplayName', 'Predicted Data');
            xlabel('Time');
            ylabel('Sapflow');
            title(summaryText); % Use the summary text as the title
            legend('show');
            hold off;
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; {sprintf('Error validating model for sensor %s: %s', sensorName, ME.message)}];
            scroll(app.TextArea, 'bottom');
            msgbox(sprintf('An error occurred while validating the model: %s', ME.message), 'Error', 'error');
            drawnow;
        end
    end


    
    % Plot segmented data
    function plotSegmentedData(app, data, sensorColumns)
        try
            startPeriod = app.EffectiveStartDateDatePicker.Value;
            endPeriod = app.EffectiveEndDateDatePicker.Value;
        
            % Create a logical mask for the effective period
            effectivePeriodMask = data.TIMESTAMP >= startPeriod & data.TIMESTAMP <= endPeriod;
        
            % Initialize the figure
            figure;
            hold on;
        
            % Use distinct colors for each sensor plot
            numSensors = length(sensorColumns);
            colors = lines(numSensors);
        
            % Iterate over sensor columns to plot each sensor's data
            for idx = 1:numSensors
                % Get the column index
                colIndex = sensorColumns(idx);
        
                % Plot the data for the current sensor
                plot(data.TIMESTAMP(effectivePeriodMask), data{effectivePeriodMask, colIndex}, ...
                    'Color', colors(idx, :), 'DisplayName', sprintf('Sensor %s', data.Properties.VariableNames{colIndex}));
            end
        
            % Set plot labels and title
            xlabel('Time');
            ylabel('Sapflow');
            title('Segmented Sapflow Data for All Sensors');
        
            % Show the legend
            legend('show');
            hold off;
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; {sprintf('Error plotting segmented data: %s', ME.message)}];
            scroll(app.TextArea, 'bottom');
            msgbox(sprintf('An error occurred while plotting segmented data: %s', ME.message), 'Error', 'error');
            drawnow;
        end
    end

    % Remove outliers, high, and low variation windows
    function [sensorData, outlierMask, highVariationMask, lowVariationMask] = removeOutlierWindowsAndInconsistencies(~, sensorData, windowSize, thresholdMultiplier, variationThresholdHigh, variationThresholdLow)
        try
            n = length(sensorData);
            outlierMask = false(n, 1);
            highVariationMask = false(n, 1);
            lowVariationMask = false(n, 1);
    
            % Precompute the overall IQR for the dataset
            Q1 = quantile(sensorData, 0.25);
            Q3 = quantile(sensorData, 0.75);
            IQR = Q3 - Q1;
    
            % Loop over the data using a sliding window approach
            for i = 1:n-windowSize+1
                window = sensorData(i:i+windowSize-1);
                windowMean = mean(window, 'omitnan');
                windowStd = std(window, 'omitnan');
    
                if windowMean < Q1 - thresholdMultiplier * IQR || windowMean > Q3 + thresholdMultiplier * IQR
                    outlierMask(i:i+windowSize-1) = true;
                end
    
                if windowStd > variationThresholdHigh
                    highVariationMask(i:i+windowSize-1) = true;
                end
    
                if windowStd < variationThresholdLow
                    lowVariationMask(i:i+windowSize-1) = true;
                end
            end
    
            % Replace outliers and inconsistent windows with NaN
            sensorData(outlierMask | highVariationMask | lowVariationMask) = NaN;
    
        catch ME
            % Handle any unexpected errors
            error('An error occurred during the outlier detection process: %s', ME.message);
        end
    end

    % Function to remove short runs of consistent data points
    function cleanedData = removeShortRuns(~, sensorData, minRunLength)
        % Find all runs of consecutive non-NaN data
        isNonNaN = ~isnan(sensorData);
        runStartIdx = find(diff([false; isNonNaN]) == 1);
        runEndIdx = find(diff([isNonNaN; false]) == -1);
    
        % Ensure that the run indices are properly handled
        numRuns = min(length(runStartIdx), length(runEndIdx));
    
        % Loop through each run and remove those shorter than minRunLength
        cleanedData = sensorData;
        for i = 1:numRuns
            if runEndIdx(i) - runStartIdx(i) + 1 < minRunLength
                cleanedData(runStartIdx(i):runEndIdx(i)) = NaN;
            end
        end
    end
   
    function [predictions, predictingVariableNames, validIdx] = makePredictions(app, modelType, sensorName, scaleData)
        try
            % Start timing
            tic;
            
            % Load the trained model and predicting variables
            modelData = loadTrainedModel(app, modelType, sensorName);
            model = modelData.model;  % Access the model field
            predictingVariableNames = modelData.predictingVariables;
            
            % Load scaling parameters if scaling is enabled
            if scaleData
                scalingParams = modelData.scalingParams;
            end

    
            % Initialize validIdx to true
            validIdx = true(height(app.UITable4.Data), 1);
    
            % Determine valid indices based on the selected predicting variables
            for j = 1:length(predictingVariableNames)
                columnName = predictingVariableNames{j};
                columnData = app.UITable4.Data.(columnName);
                disp('Predicting Variables:');
                disp(predictingVariableNames);

                if isdatetime(columnData)
                    % Skip NaN check for datetime columns
                    continue;
                else
                    % Update validIdx for non-datetime columns
                    validIdx = validIdx & ~isnan(columnData);
                end
            end
    
            % Ensure there are valid data points for making predictions
            if sum(validIdx) == 0
                error('No valid data points found for making predictions.');
            end
    
            % Prepare the feature matrix X for prediction using the stored predicting variables
            X = [];
            for j = 1:length(predictingVariableNames)
                columnName = predictingVariableNames{j};
                columnData = app.UITable4.Data.(columnName)(validIdx);
    
                if isdatetime(columnData)
                    % Convert datetime to hour and minute and one-hot encode
                    hourData = hour(columnData);
                    hourOneHot = oneHotEncodeHour(app, hourData);
                    X = [X, hourOneHot];
                else
                    % Fill missing values
                    columnData = fillmissing(columnData, 'linear');
                    
                    if scaleData
                        mu = scalingParams.(columnName).mu;
                        sigma = scalingParams.(columnName).sigma;
                        columnData = (columnData - mu) ./ sigma;
                    end
                    
                    % Append the data (scaled or unscaled) to X
                    X = [X, columnData];
                end
            end
    
            % Make predictions based on the model type
            switch modelType
                case 'BiLSTM'
                    predictions = predict(model, X');
                case 'LSTM'
                    predictions = predict(model, X');
                case 'GRU'
                    predictions = predict(model, X');
                case 'Random Forest'
                    predictions = predict(model, X);  % Random Forest uses `predict` directly
                case {'Simple Linear Model', 'Multiple Linear Model'}
                    predictions = predict(model, X);
                case {'ARX', 'ARMAX'}
                    % Handle ARX/ARMAX predictions with cleaned data
                    fullY = app.UITable4.Data.(sensorName); % Get full Y data
                    outputData = fullY(validIdx);
                    outputDataCleaned = fillmissing(outputData, 'linear');
                    XCleaned = fillmissing(X, 'linear');
    
                    % Create iddata object with cleaned data
                    predictionData = iddata(outputDataCleaned, XCleaned);
                    arxPredictions = predict(model, predictionData, 1);
                    predictions = arxPredictions.OutputData;
                otherwise
                    error('Unsupported model type.');
            end
    
            % Ensure no negative values in the predictions
            predictions(predictions < 0) = 0;
    
            % Stop timing and get elapsed time
            elapsedTime = toc;
            % Update the TextArea with the prediction completion message
            app.TextArea.Value = [app.TextArea.Value; ...
                sprintf('Predictions completed for sensor %s using %s model. Time taken: %.2f seconds.\n', sensorName, modelType, elapsedTime)];
            scroll(app.TextArea, 'bottom');
            drawnow; % Ensure the TextArea updates immediately
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; ...
                sprintf('Error making predictions for sensor %s using %s model: %s\n', sensorName, modelType, ME.message)];
            scroll(app.TextArea, 'bottom');
            msgbox(sprintf('An error occurred during predictions: %s', ME.message), 'Error', 'error');
            rethrow(ME);
        end
    end

    function savePredictedData(app, predictions, predictingVariableNames, validIdx, sensorName, modelType)
        try
            % Convert predictions to a column vector if necessary
            if isrow(predictions)
                predictions = predictions';
            end
        
            % Initialize the table with the predictions
            predictedDataTable = table(predictions, 'VariableNames', {'PredictedSapflow'});
        
            % Add the environmental variables that were used for prediction to the table
            for j = 1:length(predictingVariableNames)
                columnName = predictingVariableNames{j};
                sampledEnvData = app.UITable4.Data.(columnName)(validIdx);
        
                % If using a sequence model (like BiLSTM, LSTM, GRU), align the environmental data
                if size(sampledEnvData, 1) > size(predictions, 1)
                    sampledEnvData = sampledEnvData(1:size(predictions, 1));  % Truncate to match prediction size
                elseif size(sampledEnvData, 1) < size(predictions, 1)
                    sampledEnvData(size(predictions, 1), 1) = NaN;  % Pad with NaNs if shorter
                end
        
                % Add the aligned environmental data to the table
                predictedDataTable.(columnName) = sampledEnvData;
            end
        
            % Save the predicted data to a CSV file
            outputFilename = sprintf('Predicted_%s_%s.csv', modelType, sensorName);
            writetable(predictedDataTable, outputFilename);
            app.TextArea.Value = [app.TextArea.Value; ...
                sprintf('Predicted data saved to %s\n', outputFilename)];
            scroll(app.TextArea, 'bottom');
            drawnow; % Ensure the TextArea updates immediately
    
        catch ME
            % Handle any unexpected errors
            app.TextArea.Value = [app.TextArea.Value; ...
                sprintf('Error saving predicted data for sensor %s using %s model: %s\n', sensorName, modelType, ME.message)];
            scroll(app.TextArea, 'bottom');
            msgbox(sprintf('An error occurred while saving predicted data: %s', ME.message), 'Error', 'error');
            drawnow;
        end
    end

    function startPrediction(app)
        % Get the selected model type
        checkedModelNodes = app.Tree_3.CheckedNodes;
        if isempty(checkedModelNodes)
            error('No model type selected.');
        elseif length(checkedModelNodes) > 1
            error('Multiple model types selected. Please select only one.');
        end
    
        modelType = checkedModelNodes(1).Text;
    
        % Check if scaling is enabled
        scaleData = app.ScaleDataCheckBox.Value;  % True if checked, false otherwise
    
        % Get the checked sensors from the app
        checkedSensorNodes = app.SensorsTree.CheckedNodes;
    
        % Ensure at least one sensor is selected
        if isempty(checkedSensorNodes)
            error('No sensors selected for prediction.');
        end
    
        % Iterate over each selected sensor and make predictions
        for i = 1:length(checkedSensorNodes)
            sensorName = checkedSensorNodes(i).Text;
    
            % Skip the top-level node 'Sensors' if it's included
            if strcmp(sensorName, 'Sensors')
                continue;
            end
    
            % Each sensor's data and model should be handled separately
            try
                % Pass the scaleData flag to makePredictions
                [predictions, predictingVariableNames, validIdx] = makePredictions(app, modelType, sensorName, scaleData);
    
                % Save the predicted data along with environmental variables
                savePredictedDataWithVPDIndex(app, predictions, predictingVariableNames, validIdx, sensorName, modelType);
    
                % Update the list of predicted sensors and update the tree
                updateTrainedAndPredictedSensors(app, sensorName);
    
                % Plot predictions for the current sensor
                figure;
                plot(predictions, 'DisplayName', sprintf('Predicted for %s', sensorName));
                xlabel('Time');
                ylabel('Sapflow');
                title(sprintf('Predicted Sapflow for Sensor %s using %s model', sensorName, modelType));
                legend('show');
                grid on; % Add a grid for better visualization
    
            catch ME
                % Handle any errors that occur during prediction
                errorMessage = sprintf('Error making predictions for sensor %s: %s', sensorName, ME.message);
                app.TextArea.Value = [app.TextArea.Value; {errorMessage}];
                scroll(app.TextArea, 'bottom');
                drawnow;
            end
        end
    end

end

%% Unility %%
    methods (Access = private)

        function startWait(app, message)
            % Display a waitbar with the given message
            app.waitbarHandle = waitbar(0, message, 'Name', 'Please wait...');
        end

        function updateWait(app, progress, message, varargin)
            % Update the waitbar with progress and a formatted message
            if isvalid(app.waitbarHandle)
                waitbar(progress, app.waitbarHandle, sprintf(message, varargin{:}));
            end
        end

        function endWait(app)
            % Close the waitbar
            if isvalid(app.waitbarHandle)
                close(app.waitbarHandle);
                app.waitbarHandle = []; % Clear the handle
            end
        end
    end
    
%% Export K, K_nightly, and K_error %%
    methods

        function exportFValuesAfterGapFill(app)
            try
                % Step 1: Check if a valid output path is defined
                outputPath = app.Output.Value;
                if isempty(outputPath) || ~isfolder(outputPath)
                    errordlg('Please set a valid output path in the Output field.', 'Invalid Output Path');
                    return;
                end
                
                % Step 2: Create export folder for F-values if not already existing
                exportFolderPath = fullfile(outputPath, 'ExportedFvalue');
                if ~isfolder(exportFolderPath)
                    mkdir(exportFolderPath);
                end
                
                % Step 3: Generate output filename with timestamp
                timestamp3 = datestr(now, 'yyyymmdd_HHMMSS');
                fOutputFilename = fullfile(exportFolderPath, sprintf('PredictedFValues_%s.csv', timestamp3));
                
                app.startWait('Calculating and exporting F-values after gap-fill...');
                
                % Step 4: Prompt user for coefficients 'a' and 'b'
                prompt = {'Enter the value for coefficient a:', 'Enter the value for coefficient b:'};
                dlgtitle = 'Input Coefficients';
                dims = [1 50];
                definput = {'0.11899', '1.231'};
                answer = inputdlg(prompt, dlgtitle, dims, definput);
                if isempty(answer)
                    app.endWait();
                    return; % Exit if the user cancels the input dialog
                end
                
                % Convert user input to numerical values
                a = str2double(answer{1});
                b = str2double(answer{2});
                if isnan(a) || isnan(b)
                    errordlg('Invalid input for coefficients. Please enter valid numbers.', 'Invalid Input');
                    app.endWait();
                    return;
                end
                
                % Step 5: Prepare environmental data and timestamp
                combinedFData = prepareEnvironmentalData(app);
                
                % Step 6: Iterate through all checked sapflow sensors and compute F-values
                checkedNodes = app.Tree.CheckedNodes;
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));
                
                % Clear the previous plot before re-plotting
                cla(app.UIAxes6_6, 'reset'); % clear and reset the axes

                for i = 1:numel(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    
                    % Ensure gap-filled data is available
                    if ismember(sensorName, app.GapFilledData.Properties.VariableNames)
                        % Compute and append F-values
                        combinedFData = calculateAndAppendFValues(app, sensorName, combinedFData, a, b);
                    else
                        % Log missing data
                        logMessage(app, sprintf('No gap-filled data available for sensor %s.', sensorName));
                    end
                end
                
                % Step 7: Export the combined F-value data to CSV
                exportFCombinedDataToCSV(app, combinedFData, fOutputFilename);
                
            catch ME
                % Handle errors and display them
                errordlg(ME.message, 'Error');
                logMessage(app, sprintf('An error occurred: %s', ME.message));
            end
            
            app.endWait();
        end
        
        % Helper function: Calculate, append F-values for a sensor, and plot them
        function combinedData = calculateAndAppendFValues(app, sensorName, combinedData, a, b)
            % Extract gap-filled sapflow data for the sensor
            app.sapflow = app.GapFilledData.(sensorName);
            
            % Create a new SapflowProcessor and compute K-values
            sensorProcessor = SapflowProcessor(app.DOY, app.tod, app.VPD, app.par, app.sapflow, app.Config);
            sensorProcessor.compute();
            
            % Retrieve K-values and compute F-values using the formula F = a * (K)^b
            k_values = sensorProcessor.ka_line';
            f_values = a * (k_values).^b;
            
            % Append F-values as a new column in the combinedData table
            combinedData = [combinedData, table(f_values, 'VariableNames', {['F_', sensorName]})];
            
            % Plot the F-values on app.UIAxes6_6
            hold(app.UIAxes6_6, 'on');
            plot(app.UIAxes6_6, combinedData.TIMESTAMP, f_values, ...
                 'LineWidth', 1.5, 'DisplayName', strrep(sensorName, '_', '\_'));
            xlabel(app.UIAxes6_6, 'Timestamp');
            ylabel(app.UIAxes6_6, 'F-values');
            title(app.UIAxes6_6, 'F-values for Sensors');
            legend(app.UIAxes6_6, 'show');
            hold(app.UIAxes6_6, 'off');
        end


        function exportKValuesAfterGapFill(app)
            try
                % Step 1: Check if a valid output path is defined
                outputPath = app.Output.Value;
                if isempty(outputPath) || ~isfolder(outputPath)
                    errordlg('Please set a valid output path in the Output field.', 'Invalid Output Path');
                    return;
                end
                
                % Step 2: Create export folder for K-values if not already existing
                exportFolderPath = fullfile(outputPath, 'ExportedKvalue');
                if ~isfolder(exportFolderPath)
                    mkdir(exportFolderPath);
                end
                
                % Step 3: Generate output filename with timestamp
                timestamp2 = datestr(now, 'yyyymmdd_HHMMSS');
                outputFilename = fullfile(exportFolderPath, sprintf('PredictedKValues_%s.csv', timestamp2));
                
                app.startWait('Exporting K-values after gap-fill...');
                
                % Step 4: Prepare combined data with environmental variables and timestamps
                combinedData = prepareEnvironmentalData(app);
                
                % Step 5: Iterate through all checked sapflow sensors
                checkedNodes = app.Tree.CheckedNodes;
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));

                % Clear the previous plot before re-plotting
                cla(app.UIAxes6_5, 'reset'); % clear and reset the axes

                for i = 1:numel(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    
                    % Check if gap-filled data for the sensor exists
                    if ismember(sensorName, app.GapFilledData.Properties.VariableNames)
                        % Step 6: Calculate K-values using the sensor data
                        combinedData = calculateAndAppendKValues(app, sensorName, combinedData);
                    else
                        % Log that data is missing
                        logMessage(app, sprintf('No gap-filled data available for sensor %s.', sensorName));
                    end
                end
                
                % Step 7: Export the combined data to CSV
                exportKCombinedDataToCSV(app, combinedData, outputFilename);
                
            catch ME
                % Handle errors and display them in a message box
                errordlg(ME.message, 'Error');
                logMessage(app, sprintf('An error occurred: %s', ME.message));
            end
            
            app.endWait();
        end
        
        % Helper function: Prepare environmental data
        function combinedData = prepareEnvironmentalData(app)
            timestampData = app.GapFilledData.TIMESTAMP;
            app.DOY = day(timestampData, 'dayofyear');  % Day of Year
            app.tod = hour(timestampData) * 100 + minute(timestampData); % Convert to HHMM format
            
            app.VPD = app.GapFilledData.VPD;
            app.par = app.GapFilledData.PAR_Den_Avg;
            
            % Create table with TIMESTAMP and environmental variables
            combinedData = table(timestampData, app.DOY, app.tod, app.VPD, app.par, ...
                                 'VariableNames', {'TIMESTAMP', 'DOY', 'TOD', 'VPD', 'PAR'});
        end
        
        % Helper function: Calculate, append K-values for a sensor, and plot them
        function combinedData = calculateAndAppendKValues(app, sensorName, combinedData)
            % Extract gap-filled sapflow data for the sensor
            app.sapflow = app.GapFilledData.(sensorName);
            
            % Create a new SapflowProcessor and compute K-values
            sensorProcessor = SapflowProcessor(app.DOY, app.tod, app.VPD, app.par, app.sapflow, app.Config);
            sensorProcessor.compute();
            
            % Retrieve the calculated K-values
            k_values = sensorProcessor.ka_line';
            
            % Append K-values as a new column in the combinedData table
            combinedData = [combinedData, table(k_values, 'VariableNames', {['k_', sensorName]})];
            
            % Plot the K-values on app.UIAxes6_5
            hold(app.UIAxes6_5, 'on');
            plot(app.UIAxes6_5, combinedData.TIMESTAMP, k_values, ...
                 'LineWidth', 1.5, 'DisplayName', strrep(sensorName, '_', '\_'));
            xlabel(app.UIAxes6_5, 'Timestamp');
            ylabel(app.UIAxes6_5, 'K-values');
            title(app.UIAxes6_5, 'K-values for Sensors');
            legend(app.UIAxes6_5, 'show');
            hold(app.UIAxes6_5, 'off');
        end

        
        % Helper function: Export combined data to CSV
        function exportKCombinedDataToCSV(app, combinedData, outputFilename)
            try
                writetable(combinedData, outputFilename);
                logMessage(app, ['K-values exported successfully to ', outputFilename]);
            catch err
                errordlg(err.message, 'Export failed');
                logMessage(app, ['Error exporting K-values: ', err.message]);
            end
        end

        % Helper function: Export combined data to CSV
        function exportFCombinedDataToCSV(app, combinedData, outputFilename)
            try
                writetable(combinedData, outputFilename);
                logMessage(app, ['F-values exported successfully to ', outputFilename]);
            catch err
                errordlg(err.message, 'Export failed');
                logMessage(app, ['Error exporting K-values: ', err.message]);
            end
        end
        
        % Helper function: Log messages to TextArea_2 and scroll to bottom
        function logMessage(app, message)
            app.TextArea_2.Value = [app.TextArea_2.Value; {message}];
            scroll(app.TextArea_2, "bottom");
        end

        % Export current K estimates
        function exportCurrentK(app, ~)
            [filename, path] = uiputfile('*.csv', 'Select Export File');
            if ~filename
                return;
            end

            app.startWait('Exporting current K estimates...');

            % Initialize a table to store the combined data with environmental variables
            combinedData = table(app.DOY, app.tod, app.VPD, app.par, 'VariableNames', {'DOY', 'TOD', 'VPD', 'PAR'});
            
            % Iterate through all sapflow sensors
            for i = 1:numel(app.SapFlowCols)
                yDataColumn = app.SapFlowCols{i};
            
                % Get sapflow data for this sensor and recompute K-values
                app.sapflow = app.UITable4.Data.(yDataColumn);

                % Create a new SapflowProcessor for this sensor
                sensorProcessor = SapflowProcessor(app.DOY, app.tod, app.VPD, app.par, app.sapflow, app.Config); 

                sensorProcessor.compute();
                k_values = sensorProcessor.ka_line;

                % Get the middle index
                midIndex = floor(length(app.sapflow) / 2);
                
                % Print sapflow and K-values from the middle
                disp(['Sapflow for sensor ', yDataColumn, ' (middle values):']);
                disp(app.sapflow(midIndex-5:midIndex+5));  % Display 11 values around the middle
                disp(['K-values for sensor ', yDataColumn, ' (middle values):']);
                disp(k_values(midIndex-5:midIndex+5));
            
                % Transpose k_values to make it a column vector
                k_values = k_values';
            
                % Create a temporary table with only sapflow and K-values
                sensorData = table(app.sapflow, k_values, 'VariableNames', {yDataColumn, ['k_', yDataColumn]});
            
                % Append only the K-value column to combinedData
                combinedData = [combinedData, sensorData(:, 2)];  % Append the 2nd column (K-values)
            end

            try
                writetable(combinedData, fullfile(path, filename));
                app.TextArea2.Value = [app.TextArea2.Value; {['Data exported successfully to ', fullfile(path, filename)]}];
                scroll(app.TextArea2, "bottom");
            catch err
                errordlg(err.message, 'Export failed');
                app.TextArea2.Value = [app.TextArea2.Value; {['Error exporting data: ', err.message]}];
                scroll(app.TextArea2, "bottom");
            end

            app.endWait();
        end

        % Export nightly dTmax K estimates
        function exportNightlyK(app, ~)
            [filename, path] = uiputfile('*.csv', 'Select Export File');
            if ~filename
                return;
            end
        
            app.startWait('Exporting nightly dTmax K estimates...');
        
            % Initialize a table to store the combined data with environmental variables
            combinedData = table(app.DOY, app.tod, app.VPD, app.par, 'VariableNames', {'DOY', 'TOD', 'VPD', 'PAR'});
        
            % Display the size of combinedData initially
            disp(['Initial size of combinedData: ', num2str(size(combinedData))]);
        
            % Iterate through all sapflow sensors
            for i = 1:numel(app.SapFlowCols)
                yDataColumn = app.SapFlowCols{i};
        
                % Get sapflow data for this sensor
                app.sapflow = app.UITable4.Data.(yDataColumn); 
        
                % Use the original (unfiltered) data
                thisSensor = app.sapflow;  
                thisDOY = app.DOY;
                thisTOD = app.tod;
                thisvpd = app.VPD;
                thispar = app.par;
        
                thisdTmax = BL_nightly(thisSensor, thisDOY, thisTOD);
        
                % Compute K-values based on nightly dTmax (handle NaNs)
                if sum(~isnan(thisSensor(thisdTmax)) & thisSensor(thisdTmax) > 0) >= 2
                    thisblv = interp1(thisdTmax(~isnan(thisSensor(thisdTmax))), thisSensor(thisdTmax(~isnan(thisSensor(thisdTmax)))), (1:length(thisSensor))');
                    k_values_nightly = thisblv ./ thisSensor - 1;
                    k_values_nightly(k_values_nightly < 0) = 0;
                else
                    k_values_nightly = nan(size(thisSensor));
                end
       
                % Transpose k_values_nightly to make it a column vector
                k_values_nightly = k_values_nightly';
        
                % Create a temporary table with only K_nightly values
                sensorData = table(k_values_nightly, 'VariableNames', {['K_nightly_', yDataColumn]});
        
                % Display sizes before concatenation
                disp(['Size of combinedData before concatenation: ', num2str(size(combinedData))]);
                disp(['Size of sensorData: ', num2str(size(sensorData))]);
        
                % Append only the K_nightly_ values column to combinedData
                combinedData = [combinedData, sensorData]; 
            end
        
            try
                writetable(combinedData, fullfile(path, filename));
                app.TextArea2.Value = [app.TextArea2.Value; {['Data exported successfully to ', fullfile(path, filename)]}];
                scroll(app.TextArea2, "bottom");
            catch err
                errordlg(err.message, 'Export failed');
                app.TextArea2.Value = [app.TextArea2.Value; {['Error exporting data: ', err.message]}];
                scroll(app.TextArea2, "bottom");
            end
        
            app.endWait();
        end

        % Export K error estimates
        function exportKError(app, ~)
            [filename, path] = uiputfile('*.csv', 'Select Export File');
            if ~filename
                return;
            end

            app.startWait('Exporting K error estimates...');

            % Initialize a table to store the combined data with environmental variables
            combinedData = table(app.DOY, app.tod, app.VPD, app.par, 'VariableNames', {'DOY', 'TOD', 'VPD', 'PAR'});

            % Iterate through all sapflow sensors
            for i = 1:numel(app.SapFlowCols)
                yDataColumn = app.SapFlowCols{i};

                % Get sapflow data for this sensor
                app.sapflow = app.UITable4.Data.(yDataColumn); 

                thisSensor = app.sapflow; 
                thisbla = app.sapflowProcessor.bla'; 

                if length(thisbla) > 2
                    [~, sd_k] = BL_rand(thisSensor, app.Config.Timestep, thisbla);
                else
                    sd_k = zeros(length(thisSensor), 1);
                end

                % Pad sd_k with NaNs if necessary
                if length(sd_k) < length(app.sapflow)
                    sd_k = [sd_k; nan(length(app.sapflow) - length(sd_k), 1)];
                end

                % Transpose sd_k to make it a column vector
                sd_k = sd_k';

                % Create a temporary table with only sapflow and K_error values
                sensorData = table(app.sapflow, sd_k, 'VariableNames', {yDataColumn, ['K_error_', yDataColumn]});

                % Append only the K_error_ values column to combinedData
                combinedData = [combinedData, sensorData(:, 2)]; 
            end

            try
                writetable(combinedData, fullfile(path, filename));
                app.TextArea2.Value = [app.TextArea2.Value; {['Data exported successfully to ', fullfile(path, filename)]}];
            catch err
                errordlg(err.message, 'Export failed');
                app.TextArea2.Value = [app.TextArea2.Value; {['Error exporting data: ', err.message]}];
            end

            app.endWait();
        end
    end

%% Checking, filtering, adding baselines, and plotting %%
    methods (Access = public)

        function str = struct2str(app)
            str = '';
            fields = fieldnames(s);
            for i = 1:numel(fields)
                field = fields{i};
                value = s.(field);
                if isnumeric(value)
                    valueStr = num2str(value);
                elseif ischar(value)
                    valueStr = value;
                else
                    valueStr = '<complex value>';
                end
                str = [str, field, ': ', valueStr, ', '];
            end
            str = ['{', str(1:end-2), '}']; % Remove trailing comma and space
        end

        function setDOY(app, data)
            % Check if the 'DOY' column is available in the data
            if ismember('DOY', data.Properties.VariableNames)
                % If available, use the existing DOY data
                app.DOY = data.DOY;
                disp('DOY column found in the data. Using existing DOY values.');
            else
                % If not available, calculate DOY from the timestamp
                app.DOY = day(app.timestamp, 'dayofyear');
                disp('DOY column not found in the data. Calculating DOY from TIMESTAMP.');
            end
        end
        
        function calculate_plot_baseline(app) % Caution! Other user's data may not structured as below, add functions to handle it.
            % Convert TIMESTAMP to datetime and ensure it's a datetime array
            app.timestamp = datetime(data.TIMESTAMP, 'InputFormat', 'M/d/yyyy H:mm');
    
            % Extract necessary columns
            app.timestamp = datetime(data.TIMESTAMP, 'InputFormat', 'M/d/yyyy H:mm'); % Ensure timestamp is correctly formatted
            app.temperature = data.AirTC_Avg;
            app.humidity = data.RH;
            app.par = data.PAR_Den_Avg;
            app.sapflow = data.(yDataColumn); % Get sapflow data based on dropdown selection
            app.setDOY(data);
    
            % Ensure sapflow is a column vector
            if isrow(app.sapflow)
                app.sapflow = app.sapflow';
            end
    
            % Calculate Time of Day in the format HHMM
            app.tod = hour(app.timestamp) * 100 + minute(app.timestamp);
    
            % Calculate VPD
            svp = 0.6108 .* exp((17.27 .* app.temperature) ./ (app.temperature + 237.3)); % Saturation Vapour Pressure
            avp = (app.humidity ./ 100) .* svp; % Actual Vapour Pressure
            app.VPD = svp - avp; % Vapour Pressure Deficit
    
            % Initialize configuration parameters
            app.Config.Timestep = app.TimeStepIncrementsminEditField.Value; 
            app.Config.parThresh = app.PARThresholdEditField.Value; 
            app.Config.vpdThresh = app.VPDThresholdEditField.Value; 
            app.Config.vpdTime = app.VPDTimehEditField.Value; 
    
            % Initialize SapflowProcessor
            app.sapflowProcessor = SapflowProcessor(app.DOY, app.tod, app.VPD, app.par, app.sapflow, app.Config);
    
            % Identify baseline points
            try
                app.sapflowProcessor.auto(); % or sapflowProcessor.autoNightly();
            catch ME
                disp('Error identifying baseline points:');
                disp(ME.message);
            end
    
            % Retrieve identified baseline points
            app.baselinePoints = app.sapflowProcessor.bla;
    
            % Ensure baselinePoints is a vector and non-empty
            if isrow(app.baselinePoints)
                app.baselinePoints = app.baselinePoints';
            end
            app.baselinePoints = app.baselinePoints(~isnan(app.baselinePoints) & app.baselinePoints > 0);
    
            % Interpolate baseline values for plotting
            if ~isempty(app.baselinePoints) && numel(app.baselinePoints) > 1
                app.baselineValues = interp1(app.baselinePoints, app.sapflow(app.baselinePoints), 1:length(app.sapflow), 'linear', 'extrap');
            else
                app.baselineValues = NaN(size(app.sapflow));
            end
    
            % Plot the sapflow data
            cla(app.UIAxes4);
            hold(app.UIAxes4, 'on');
            app.hPlot = plot(app.UIAxes4, app.timestamp, app.sapflow, '-b'); % Plot sapflow data in blue
    
    
            % Plot the interpolated baseline with light red lines
            plot(app.UIAxes4, app.timestamp, app.baselineValues, '-', 'Color', [1 0.6 0.6], 'LineWidth', 1); % Light red lines
    
            % Plot the baseline points with empty red circles
            if ~isempty(app.baselinePoints)
                plot(app.UIAxes4, app.timestamp(app.baselinePoints), app.sapflow(app.baselinePoints), 'or', 'MarkerFaceColor', 'none', 'MarkerEdgeColor', 'r', 'MarkerSize', 6);
            end
    
            % Set axes labels and title
            xlabel(app.UIAxes4, 'Time');
            ylabel(app.UIAxes4, 'Sapflow');
            title(app.UIAxes4, 'Sapflow Data and Identified Baselines');
            legend(app.UIAxes4, 'Sapflow Data', 'Baseline', 'Baseline Points');
            grid(app.UIAxes4, 'on');
            hold(app.UIAxes4, 'off');
        end

        function plotData(app, maintainLimits)
            try
                if nargin < 2
                    maintainLimits = false; % Default to not maintaining limits if not specified
                end
        
                % Ensure there are items in dropdowns
                if isempty(app.XDropDown.Items) || isempty(app.YDropDown.Items)
                    return; % No data to plot
                end
        
                % Get selected X and Y data
                xDataColumn = app.XDropDown.Value;
                yDataColumn = app.YDropDown.Value;
        
                % Get data from UITable4
                data = app.UITable4.Data;
        
                % Validate selected columns
                if ~any(strcmp(app.UITable4.ColumnName, xDataColumn)) || ~any(strcmp(app.UITable4.ColumnName, yDataColumn))
                    error('Selected columns do not exist in the data.');
                end
        
                % Convert TIMESTAMP to datetime and ensure it's a datetime array
                try
                    app.timestamp = datetime(data.TIMESTAMP, 'InputFormat', 'M/d/yyyy H:mm', 'Format', 'yyyy-MM-dd HH:mm:ss');
                catch
                    error('Failed to convert TIMESTAMP to datetime. Check the format and data.');
                end
        
                % Validate the timestamp
                if ~isa(app.timestamp, 'datetime')
                    error('Timestamp data is not of type datetime.');
                end
        
                % Filter out invalid timestamps and corresponding sapflow data
                validIndices = ~isnat(app.timestamp);  % Use isnat for datetime arrays
                app.timestamp = app.timestamp(validIndices);
                app.sapflow = data.(yDataColumn); % Get sapflow data based on dropdown selection
                app.sapflow = app.sapflow(validIndices);
        
                % Debugging output (optional)
                disp('Timestamp Preview:');
                disp(app.timestamp(1:5)); % Display the first few timestamps
                disp('Sapflow Preview:');
                disp(app.sapflow(1:5)); % Display the first few sapflow values
        
                % Ensure sapflow is a column vector
                if isrow(app.sapflow)
                    app.sapflow = app.sapflow';
                end
        
                % Calculate Time of Day in the format HHMM
                app.tod = hour(app.timestamp) * 100 + minute(app.timestamp);
        
                % Calculate VPD
                svp = 0.6108 .* exp((17.27 .* app.temperature) ./ (app.temperature + 237.3)); % Saturation Vapour Pressure
                avp = (app.humidity ./ 100) .* svp; % Actual Vapour Pressure
                app.VPD = svp - avp; % Vapour Pressure Deficit
        
                % Initialize configuration parameters
                app.Config.Timestep = app.TimeStepIncrementsminEditField.Value;
                app.Config.parThresh = app.PARThresholdEditField.Value;
                app.Config.vpdThresh = app.VPDThresholdEditField.Value;
                app.Config.vpdTime = app.VPDTimehEditField.Value;
        
                % Initialize SapflowProcessor
                app.sapflowProcessor = SapflowProcessor(app.DOY, app.tod, app.VPD, app.par, app.sapflow, app.Config);

                % Trigger computation of K-values
                app.sapflowProcessor.compute();
        
                % Get K-values, normalized VPD, and other required data
                k_values = app.sapflowProcessor.ka_line;
                normalized_vpd = app.VPD ./ max(app.VPD);
                dTmax_baseline = app.baselineValues; % Assuming this is where you store the dTmax baseline
                stable_nighttime_dT = app.sapflow(app.sapflowProcessor.spbl); % Sapflow values at stable nighttime points
                stable_dT_low_VPD = app.sapflow(app.sapflowProcessor.zvbl); % Sapflow values at stable dT & low VPD point


                % Check if the extracted values are valid (not empty and contain finite values)
                if ~isempty(stable_nighttime_dT) && any(isfinite(stable_nighttime_dT))
                    % Proceed with plotting stable_nighttime_dT
                else
                    % Handle the case where stable_nighttime_dT is empty or contains only NaN values
                    % You can display a warning, skip plotting, or take other appropriate actions
                end
                
                if ~isempty(stable_dT_low_VPD) && any(isfinite(stable_dT_low_VPD))
                    % Proceed with plotting stable_dT_low_VPD
                else
                    % Handle the case where stable_dT_low_VPD is empty or contains only NaN values
                end
        
                % Identify baseline points
                try
                    app.sapflowProcessor.auto(); % or sapflowProcessor.autoNightly();
                catch ME
                    disp('Error identifying baseline points:');
                    disp(ME.message);
                end
        
                % Retrieve identified baseline points
                app.baselinePoints = app.sapflowProcessor.bla;
        
                % Ensure baselinePoints is a column vector and non-empty
                if isrow(app.baselinePoints)
                    app.baselinePoints = app.baselinePoints';
                end
                app.baselinePoints = app.baselinePoints(~isnan(app.baselinePoints) & app.baselinePoints > 0);
        
                % Remove any baseline points that are no longer valid after deletion
                if ~isempty(app.baselinePoints)
                    app.baselinePoints = app.baselinePoints(app.baselinePoints <= length(app.sapflow));
                end
        
                % Interpolate baseline values for plotting
                if ~isempty(app.baselinePoints) && numel(app.baselinePoints) > 1
                    app.baselineValues = NaN(size(app.sapflow));
                    validPoints = ~isnan(app.baselinePoints);
                    if any(validPoints)
                        % Interpolate only valid baseline points
                        validBaselineIndices = app.baselinePoints(validPoints);
                        app.baselineValues(validBaselineIndices) = app.sapflow(validBaselineIndices);
                        app.baselineValues = interp1(validBaselineIndices, app.baselineValues(validBaselineIndices), 1:length(app.sapflow), 'linear', 'extrap');
                    end
                else
                    app.baselineValues = NaN(size(app.sapflow));
                end
        
                % Plot the sapflow data
                cla(app.UIAxes4);
                hold(app.UIAxes4, 'on');
        
                % Ensure timestamp is datetime for plotting
                if ~isa(app.timestamp, 'datetime')
                    error('Timestamp data is not of type datetime.');
                end
        
                % Plot sapflow data in blue
                app.hPlot = plot(app.UIAxes4, app.timestamp, app.sapflow, '-', 'Color', [0.2 0.7, 0.4], 'LineWidth', 0.3);
        
                % Plot the interpolated baseline with light red lines
                plot(app.UIAxes4, app.timestamp, app.baselineValues, '-', 'Color', [1 0.6 0.6], 'LineWidth', 1); % Light red lines
        
                % Plot the baseline points with empty red circles
                if ~isempty(app.baselinePoints)
                    % Ensure baseline points are within the range of the timestamp data
                    validBaselinePoints = app.baselinePoints(app.baselinePoints <= length(app.timestamp));
                    if ~isempty(validBaselinePoints)
                        % Ensure baselinePoints is within bounds
                        validBaselinePoints = validBaselinePoints(validBaselinePoints <= length(app.timestamp));
                        plot(app.UIAxes4, app.timestamp(validBaselinePoints), app.sapflow(validBaselinePoints), 'or', 'MarkerFaceColor', 'none', 'MarkerEdgeColor', 'r', 'MarkerSize', 6);
                    end
                end
        
                % Set axes labels and title
                xlabel(app.UIAxes4, 'Time');
                ylabel(app.UIAxes4, 'dV (mV)');
                title(app.UIAxes4, 'Sapflow Data and Identified Baselines');
                legend(app.UIAxes4, 'Sapflow Data', 'Baseline', 'Baseline Points');
                grid(app.UIAxes4, 'on');
                hold(app.UIAxes4, 'off');
        
                % Save current axis limits if required
                if maintainLimits
                    currentXLim = app.UIAxes4.XLim;
                    currentYLim = app.UIAxes4.YLim;
                end
        
                % Plot the selected data on UIAxes3 for an overview
                if isvalid(app.hOverviewPlot)
                    delete(app.hOverviewPlot);
                end
                hold(app.UIAxes3, 'on');
        
                % Get the limits from UIAxes4 for the overview plot
                xLimOverview = app.UIAxes4.XLim;
        
                % Filter data for overview plot based on current limits of UIAxes4
                idx = app.timestamp >= xLimOverview(1) & app.timestamp <= xLimOverview(2); % Check timestamps within limits
        
                % Ensure the filtered data are valid
                filteredXData = app.timestamp(idx);
                filteredYData = app.sapflow(idx);
        
                % Check if there is any data to plot
                if ~isempty(filteredXData) && ~isempty(filteredYData)
                    app.hOverviewPlot = plot(app.UIAxes3, filteredXData, filteredYData, '-', 'Color', [0.2 0.6, 0.7], 'LineWidth', 0.2); % Plot overview data in green
                else
                    warning('No data available for the selected zoom range.');
                end
        
                hold(app.UIAxes3, 'off');
        
                % Set axes titles for UIAxes3
                app.UIAxes3.XLabel.String = ['Overview: ', xDataColumn];
                app.UIAxes3.YLabel.String = ['Overview: ', yDataColumn];

                % Plot on UIAxes5 with different colors
                cla(app.UIAxes5); % Clear UIAxes5 before plotting
                hold(app.UIAxes5, 'on');
                
                % Plot K-values
                plot(app.UIAxes5, app.timestamp, k_values, '-', 'Color', [0.9 0.3, 0.1], 'LineWidth', 0.3, 'DisplayName', 'K-values');
                
                % Plot VPD
                plot(app.UIAxes5, app.timestamp, normalized_vpd, '-', 'Color', [0.2 0.7, 0.5], 'LineWidth', 0.3, 'DisplayName', 'VPD');
                
                % Plot dTmax baseline
                plot(app.UIAxes5, app.timestamp, dTmax_baseline, '-', 'Color', [0.5 0.3, 0.5], 'LineWidth', 0.3, 'DisplayName', 'dTmax baseline');
       
               
                % Set labels and title for UIAxes5
                xlabel(app.UIAxes5, 'Time');
                ylabel(app.UIAxes5, 'K, dT, VPD');
                % title(app.UIAxes5, 'K-values, VPD, and Baselines');
                legend(app.UIAxes5, 'K-values','Normalized VPD','dTmax baseline');
                grid(app.UIAxes5, 'on');
                hold(app.UIAxes5, 'off');


                % Format X-axis as date if data was date type
                if isdatetime(filteredXData)
                    datetick(app.UIAxes3, 'x', 'yyyy-mm-dd', 'keepticks', 'keeplimits');
                end
        
                % Update zoom rectangle to match UIAxes4 limits
                app.updateZoomRectangle();
        
                % Append success message to TextArea2
                app.TextArea2.Value = [app.TextArea2.Value; {'Data plotted successfully.'}];
                scroll(app.TextArea2, "bottom");
        
            catch ME
                % Append error message to TextArea2
                app.TextArea2.Value = [app.TextArea2.Value; {['Warning/Error: ', ME.message]}];
                scroll(app.TextArea2, "bottom");
            end
        end

        % Additional functions for calculating Time of Day and VPD
        function tod = calculateTOD(~, timestamp)
            tod = hour(timestamp) * 100 + minute(timestamp);
        end
        
        function vpd = calculateVPD(~, temperature, humidity)
            % Calculate VPD
            svp = 0.6108 .* exp((17.27 .* temperature) ./ (temperature + 237.3)); % Saturation Vapour Pressure
            avp = (humidity ./ 100) .* svp; % Actual Vapour Pressure
            vpd = svp - avp; % Vapour Pressure Deficit
        end
        
    end
    
%% Preview and edit data %%

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
                scroll(app.TextArea2, "bottom");
                app.BackupCreated = true;
            else
                app.TextArea2.Value = [app.TextArea2.Value; {['Backup already exists at: ', backupFilePath]}];
                scroll(app.TextArea2, "bottom");
            end
        end
    end

    methods (Access = public)
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
        
            % Ensure X data remains datetime
            if isdatetime(xData)
                % No conversion needed for datetime X data
                modifiedData.(xCol) = xData;
            else
                % Convert X data to datetime if it's not already
                modifiedData.(xCol) = datetime(xData, 'ConvertFrom', 'excel'); % Adjust based on your data format
            end
        
            % Update the Y data in the table
            modifiedData.(yCol) = yData;
        
            % Update Y data
            if isnumeric(yData)
                set(plotHandle, 'YData', yData);
            else
                % Ensure Y data is numeric
                set(plotHandle, 'YData', cell2mat(yData));
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
                    % No changes to datetime data
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
            % Set LastAction to 'delete'
            app.LastAction = 'delete';
            % Add 'delete' action to the history
            app.ActionHistory{end+1} = 'delete';
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
                    data(selectedPointsIndex) = app.MaxSapFlowEditField.Value - data(selectedPointsIndex);
                elseif iscell(data)
                    for i = 1:length(selectedPointsIndex)
                        idx = selectedPointsIndex(i);
                        if isnumeric(data{idx})
                            data{idx} = app.MaxSapFlowEditField.Value - data{idx};
                        else
                            data{idx} = NaN; % Convert non-numeric cells to NaN
                        end
                    end
                else
                    msgbox('Data type not supported for inversion', 'Error', 'error');
                end
            end
            % Set LastAction to 'inverse'
            app.LastAction = 'inverse';
            % Add 'inverse' action to the history
            app.ActionHistory{end+1} = 'inverse';
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

        function undoLastSubstraction(app)
            if app.SubtractionIndex > 0
                app.UITable4.Data = app.SubtractionHistory{app.SubtractionIndex};
                app.SubtractionIndex = app.SubtractionIndex - 1;
                app.plotData(true); % Update plot to reflect changes
            else
                msgbox('No subtraction actions to undo', 'Info', 'help');
            end
        end

        function isEdited = checkIfDataEdited(app)
            % Determine if there are any edits in DeletionHistory or SubtractionHistory
            isEdited = ~isempty(app.DeletionHistory) || ~isempty(app.SubtractionHistory);
        end

       
    end

    %% Dara Previewing %%
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
                if ~ismember(ext, {'.csv', '.xlsx'})
                    error('Unsupported file type');
                end
        
                opts = detectImportOptions(app.DataFilePath, 'VariableNamingRule', 'preserve');
                data = readtable(app.DataFilePath, opts);
        
                % Identify columns
                app.identifyColumns(data);
        
                % Filter data
                filteredData = app.filterData(data);
                disp(['Size of filtered data: ', num2str(size(filteredData))]);
        
                % Create a temporary copy of filtered data for preview and editing
                tempFilteredData = filteredData;
        
                % Update UITable4 with the filtered data
                app.UITable4.Data = tempFilteredData;
                app.UITable4.ColumnName = tempFilteredData.Properties.VariableNames;
        
                % Extract necessary columns for further processing
                if ismember('TIMESTAMP', tempFilteredData.Properties.VariableNames)
                    app.timestamp = datetime(tempFilteredData.TIMESTAMP, 'InputFormat', 'M/d/yyyy H:mm');
                else
                    error('TIMESTAMP column is missing.');
                end
        
                app.setDOY(data);
                app.temperature = tempFilteredData.AirTC_Avg;
                app.humidity = tempFilteredData.RH;
                app.par = tempFilteredData.PAR_Den_Avg;
        
                % Calculate VPD
                app.VPD = app.calculateVPD(app.temperature, app.humidity);
        
                % Initialize app.Config as a structure
                app.Config = struct();
                
                % Define configuration parameters
                app.Config.Timestep = app.TimeStepIncrementsminEditField.Value;
                app.Config.parThresh = app.PARThresholdEditField.Value; 
                app.Config.vpdThresh = app.VPDThresholdEditField.Value; 
                app.Config.vpdTime = app.VPDTimehEditField.Value; 
                
                % Populate dropdown menus with data columns from UITable4
                app.populateDropdowns();
                
                % Plot initial data
                app.plotData();
                
            catch ME
                % Handle error if the file cannot be read as a table
                msgbox(sprintf('Error reading the data file: %s', ME.message), 'Error', 'error');
                app.TextArea2.Value = [app.TextArea2.Value; {['Error reading the data file: ', ME.message]}];
                scroll(app.TextArea2, "bottom");
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
                scroll(app.TextArea2, "bottom");
            end
        end
    
        % Function to populate dropdown menus with data columns
        function populateDropdowns(app)
            % Get all column names from the UITable
            colNames = app.UITable4.ColumnName;
            
            % Define known sapflow columns (you might need to refine this)
            sapFlowColumns = app.SapFlowCols;  % Assuming you have defined these elsewhere
            
            % Populate the X dropdown with all columns
            app.XDropDown.Items = colNames;
            app.XDropDown.Value = 'TIMESTAMP';  % Set TIMESTAMP as the default
            
            % Filter and populate the Y dropdown with only sapflow columns
            if isempty(sapFlowColumns)
                % Fallback: If no predefined sapFlowColumns, assume all columns are sapflow data
                app.YDropDown.Items = colNames;
            else
                % Use predefined sapFlowColumns to filter the dropdown
                app.YDropDown.Items = sapFlowColumns;
            end
            
            % Set the first sapflow column as the default Y value
            if ~isempty(app.YDropDown.Items)
                app.YDropDown.Value = app.YDropDown.Items{1};
            end
            app.loadSensorsTree();
            app.loadEnvironmentalVariablesTree();
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

                % Clear the edit histories
                app.DeletionHistory = {};
                app.SubtractionHistory = {};
                app.DeletionIndex = 0;
                app.SubtractionIndex = 0;
                disp('Edited data saved and history cleared.');
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

        function saveEditedDataAndUpdateUI(app)
            % Start a timer to measure the duration of the save operation
            tic;
        
            % Restore original X data before saving
            app.restoreOriginalXData();
        
            % Get the modified data from UITable4
            modifiedData = app.UITable4.Data;
            filePath = app.DataFilePath;
        
            % Ensure filePath is correctly set
            if isempty(filePath)
                msgbox('Data file path is not set. Please choose a file path to save.', 'Error', 'error');
                return;
            end
        
            % Extract folder path and file extension
            [folderPath, ~, ext] = fileparts(filePath);
        
            % Debug: Check if the file path is correct
            disp(['Attempting to save file to path: ', filePath]);
        
            % Check if the folder exists, if not, attempt to create it
            if ~isfolder(folderPath)
                try
                    mkdir(folderPath);  % Create the folder if it doesn't exist
                    disp(['Created directory: ', folderPath]);
                catch ME
                    msgbox(['Unable to create the folder: ', folderPath, '. Error: ', ME.message], 'Error', 'error');
                    return;
                end
            end
        
            % Simple file write test to confirm path is writable
            testFilePath = fullfile(folderPath, 'test_file.txt');
            try
                fid = fopen(testFilePath, 'w');
                if fid == -1
                    error('Unable to create a test file in the selected directory.');
                else
                    fprintf(fid, 'This is a test file to verify write permissions.\n');
                    fclose(fid);
                    delete(testFilePath);  % Remove the test file after checking write permissions
                    disp('Test file created and deleted successfully. Path is writable.');
                end
            catch ME
                msgbox(['Error during test file creation: ', ME.message], 'Error', 'error');
                return;
            end
        
            try
                % Depending on the file extension, save the data
                switch ext
                    case '.csv'
                        % Save the modified data to CSV
                        writetable(modifiedData, filePath);  % Use writetable to save CSV
                        disp(['Data successfully saved to ', filePath]);
                    case '.xlsx'
                        % Save the modified data to XLSX
                        writetable(modifiedData, filePath, 'FileType', 'spreadsheet');
                        disp(['Data successfully saved to ', filePath]);
                    case '.mat'
                        % Save the modified data to MAT
                        data = modifiedData;
                        save(filePath, 'data');
                        disp(['Data successfully saved to ', filePath]);
                    otherwise
                        error('Unsupported file format');
                end
        
                % Success: Update the UITable4 with the saved data and re-plot
                app.UITable4.Data = modifiedData;
                app.plotData();
        
                % Measure and display the elapsed time
                elapsedTime = toc;
                msgbox(['Edited data saved to ', filePath, ' in ', num2str(elapsedTime), ' seconds.'], 'Success');
            catch ME
                % Detailed error message
                errMsg = sprintf('Error saving the data to %s: %s\nDetails: %s', filePath, ME.message, ME.getReport());
                msgbox(errMsg, 'Error', 'error');
                disp(errMsg);  % Also display in the command window
            end
        end
        
        
        function saveDataToCSV(~, filePath, modifiedData)
            % Read the original data
            opts = detectImportOptions(filePath, 'VariableNamingRule', 'preserve');
            originalData = readtable(filePath, opts);
        
            % Update all columns in the original data with modified data
            originalData = modifiedData;
        
            % Write the updated table to the CSV file
            writetable(originalData, filePath, 'WriteVariableNames', true);
        end
        
        function saveDataToXLSX(~, filePath, modifiedData)
            % Read the original data
            [~, sheets] = xlsfinfo(filePath);
            sheetName = sheets{1};  % Use the first sheet
            originalData = readtable(filePath, 'Sheet', sheetName);
        
            % Update all columns in the original data with modified data
            originalData = modifiedData;
        
            % Write the updated table to the XLSX file
            writetable(originalData, filePath, 'WriteVariableNames', true, 'Sheet', sheetName);
        end
        
        function saveDataToMAT(~, filePath, modifiedData)
            % Load original data from MAT file
            dataStruct = load(filePath);
        
            % Update all fields in the dataStruct with modified data
            modifiedVars = modifiedData.Properties.VariableNames;
            for i = 1:numel(modifiedVars)
                dataStruct.(modifiedVars{i}) = modifiedData.(modifiedVars{i});
            end
        
            % Save the updated data back to the MAT file
            save(filePath, '-struct', 'dataStruct', '-v7.3');  % Use '-v7.3' for large files
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
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                scroll(app.OutputTextArea, "bottom");
            else
                projectData = struct();
                projectData.DataFilePath = app.DataFilePath;
                projectData.CurrentXData = app.hPlot.XData;
                projectData.CurrentYData = app.hPlot.YData;
                projectData.History = app.History;
                projectData.HistoryIndex = app.HistoryIndex;
                projectData.ProjectName = app.ProjectName;
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
                
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project saved to: ', fullfile(path, file)]}];
                scroll(app.OutputTextArea, "bottom");
            end
        end

        % Function to load the project including edited data
        function loadProject2(app, projectFilePath)
            % Check if the project file exists
            if ~isfile(projectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
    
            % Read JSON data from HTML file
            fid = fopen(projectFilePath, 'r');
            if fid == -1
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Cannot open HTML file'}];
                scroll(app.OutputTextArea, "bottom");
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
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Missing field ', requiredFields{i}, ' in project data']}];
                    scroll(app.OutputTextArea, "bottom");
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
    
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project loaded from: ', app.ProjectFilePath]}];
            scroll(app.OutputTextArea, "bottom");
        end  

        % Function to open a project directly by passing the saved project path
        function openSavedProject(app, projectFilePath)
        
            % Check if the project file exists
            if ~isfile(projectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
            
            % Read JSON data from HTML file
            fid = fopen(projectFilePath, 'r');
            if fid == -1
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Cannot open HTML file'}];
                scroll(app.OutputTextArea, "bottom");
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
                    scroll(app.OutputTextArea, "bottom");
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
                    scroll(app.OutputTextArea, "bottom");
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
            scroll(app.OutputTextArea, "bottom");
        
        end

    end

%% Project Page configuration %%
    methods (Access = public)

        function loadProject(app, projectFilePath)
            % Check if the project file exists
            if ~isfile(projectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
        
            % Read JSON data from HTML file
            fid = fopen(projectFilePath, 'r');
            if fid == -1
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Cannot open HTML file'}];
                scroll(app.OutputTextArea, "bottom");
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
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Missing field ', requiredFields{i}, ' in project data']}];
                    scroll(app.OutputTextArea, "bottom");
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
            loadSensorsTree(app);
        
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project loaded from: ', app.ProjectFilePath]}];
            scroll(app.OutputTextArea, "bottom");
        end

    end
      

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            StartupFcn(app);
        end

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
                '    SapFlower 1.0 data editing window was created based on Baseliner 4.0.'
                ' '
                '    SapFlower is an interactive and deep learning powered tool for processing'
                '    sap flux data from thermal dissipation probes (TDP Granier 1985,1987).'
                '    It is designed for (1) automated data cleaning (2) state-of-the-art '
                '    machine learning modeling for gap-filling, and (3) estimating of sap flux '
                '    from raw TDP data.'
                ''
                '    SapFlower was created to automate the preprocessing, data gap filling,'
                '    and analysis of sap flow data measured based on Heat Dissipation Probes.'
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
            [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
            if isequal(file, 0)
                % User canceled the action
                return;
            else
                app.DataFilePath = fullfile(path, file);
                app.DataFilePathEditField.Value = app.DataFilePath;
            end
            
            % Load data from the file and preview it in the UITable
            % previewData(app);

        end

        % Button pushed function: ProjectPathButton
        function ProjectPathButtonPushed2(app, event)
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

        % Button pushed function: CreateProjectButton
        function CreateProjectButtonPushed2(app, event)
            % Check if ProjectName is defined
            if isempty(app.ProjectNameEditField.Value)
                msgbox('Please provide a project name.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Project name is not defined.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
            
            % Ensure the project name is unique
            if strcmp(app.ProjectNameEditField.Value, app.ProjectName)
                msgbox('The project name must be different from the current loaded project.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The project name must be different from the current loaded project.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
        
            % Prompt the user to specify a new file path for the project
            projectName = app.ProjectNameEditField.Value;
            defaultFileName = strcat(projectName, '.html');
            [file, path] = uiputfile('*.html', 'Save Project As', defaultFileName);
            if isequal(file, 0)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
            end
            
            app.ProjectFilePathEditField.Value = app.ProjectFilePath;    
        
            % Capture user input for configurations from the UI
            app.Config = struct();
            app.Config.TimeStepIncrement = app.TimeStepIncrementsminEditField.Value; % Captured from user input
            app.Config.MinSapFlow = app.MinSapFlowEditField.Value; % Captured from user input
            app.Config.MaxSapFlow = app.MaxSapFlowEditField.Value; % Captured from user input
            app.Config.MaxChangePerInterval = app.MaxChangePerIntervalEditField.Value; % Captured from user input
            app.Config.DeleteDataPointsLessThan = app.DeleteDataPointsLessThanEditField.Value; % Captured from user input
            app.Config.PARThreshold = app.PARThresholdEditField.Value; % Captured from user input
            app.Config.VPDTime = app.VPDTimehEditField.Value; % Captured from user input
            app.Config.VPDThreshold = app.VPDThresholdEditField.Value; % Captured from user input
        
            % Create project configuration data structure based on app.Config
            projectData = struct();
            projectData.ProjectName = projectName;
            projectData.ProjectFilePath = app.ProjectFilePath;
            projectData.TimeStepIncrement = app.Config.TimeStepIncrement;
            projectData.MinSapFlow = app.Config.MinSapFlow;
            projectData.MaxSapFlow = app.Config.MaxSapFlow;
            projectData.MaxChangePerInterval = app.Config.MaxChangePerInterval;
            projectData.DeleteDataPointsLessThan = app.Config.DeleteDataPointsLessThan;
            projectData.PARThreshold = app.Config.PARThreshold;
            projectData.VPDTime = app.Config.VPDTime;
            projectData.VPDThreshold = app.Config.VPDThreshold;
            projectData.DataFilePath = app.DataFilePathEditField.Value; % Initialize DataFilePath as empty for now
        
            % Save the project configuration to a JSON-formatted HTML file
            jsonData = jsonencode(projectData);
            fid = fopen(app.ProjectFilePath, 'w');
            if fid == -1
                error('Cannot create HTML file');
            end
            fprintf(fid, '<html><body><pre>%s</pre></body></html>', jsonData);
            fclose(fid);
        
            % Notify the user that the project has been created
            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project created and saved to: ', app.ProjectFilePath]}];
            scroll(app.OutputTextArea, "bottom");
            msgbox(['Project created and saved to: ', app.ProjectFilePath], 'Project Created', 'help');
        
            % Automatically call the OpenProjectButtonPushed2 logic without asking the user to select the project
            openSavedProject(app, app.ProjectFilePath);
        end

        % Button pushed function: OpenProjectButton
        function OpenProjectButtonPushed2(app, event)
            % Prompt the user to select the project file path if not defined or to select a new project file
            [file, path] = uigetfile('*.html', 'Select Project File');
            if isequal(file, 0)
                % User canceled the action
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            else
                app.ProjectFilePath = fullfile(path, file);
                app.ProjectFilePathEditField.Value = app.ProjectFilePath;
            end
            
            % Check if the project file exists
            if ~isfile(app.ProjectFilePath)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The selected project file does not exist. Please select a valid project file.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
            
            % Read JSON data from HTML file
            fid = fopen(app.ProjectFilePath, 'r');
            if fid == -1
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Cannot open HTML file'}];
                scroll(app.OutputTextArea, "bottom");
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
                    scroll(app.OutputTextArea, "bottom");
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
                    scroll(app.OutputTextArea, "bottom");
                    return;
                else
                    app.DataFilePath = fullfile(path, file);
                    app.DataFilePathEditField.Value = app.DataFilePath;
                    previewData(app);
                end
            else
                previewData(app);
            end
            
            % Mark the project as loaded
            app.projectLoaded = true;

            app.OutputTextArea.Value = [app.OutputTextArea.Value; {['Project loaded from: ', app.ProjectFilePath]}];
            scroll(app.OutputTextArea, "bottom");

        end

        % Button pushed function: SaveProjectButton
        function SaveProjectButtonPushed2(app, event)
            % Check if DataFilePath is defined
            if isempty(app.DataFilePathEditField.Value)
                % Prompt the user to select the data path
                [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User canceled the data file selection.'}];
                    scroll(app.OutputTextArea, "bottom");
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
                scroll(app.OutputTextArea, "bottom");
                return;
            end
        
            % Use the project name as the default file name
            defaultFileName = strcat(app.ProjectNameEditField.Value, '.html');
            
            % Prompt the user to specify a new file path for the project
            [file, path] = uiputfile('*.html', 'Save Project As', defaultFileName);
            if isequal(file, 0)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                scroll(app.OutputTextArea, "bottom");
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
            scroll(app.OutputTextArea, "bottom");
        
            % Extract the file name without extension to update ProjectName
            [~, fileName, ~] = fileparts(file);
            app.ProjectNameEditField.Value = fileName;
        
            % Notify the user that the project has been saved
            msgbox(['Project saved to: ', app.ProjectFilePath], 'Project Saved', 'help');

        end

        % Button pushed function: SaveAsProjectButton
        function SaveAsProjectButtonPushed(app, event)
            % Check if DataFilePath is defined
            if isempty(app.DataFilePathEditField.Value)
                % Prompt the user to select the data path
                [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User canceled the data file selection.'}];
                    scroll(app.OutputTextArea, "bottom");
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
                scroll(app.OutputTextArea, "bottom");
                return;
            end
        
            % Use the project name as the default file name
            defaultFileName = strcat(app.ProjectNameEditField.Value, '.html');
            
            % Prompt the user to specify a new file path for the project
            [file, path] = uiputfile('*.html', 'Save Project As', defaultFileName);
            if isequal(file, 0)
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User selected Cancel'}];
                scroll(app.OutputTextArea, "bottom");
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
            scroll(app.OutputTextArea, "bottom");
        
            % Extract the file name without extension to update ProjectName
            [~, fileName, ~] = fileparts(file);
            app.ProjectNameEditField.Value = fileName;
        
            % Notify the user that the project has been saved
            msgbox(['Project saved to: ', app.ProjectFilePath], 'Project Saved', 'help');

        end

        % Button pushed function: PlotDataButton
        function PlotDataButtonPushed2(app, event)
            plotData(app);
        end

        % Button pushed function: UndoDeletionButton
        function UndoDeletionButtonPushed2(app, event)
            undoLastDeletion(app);
        end

        % Button pushed function: ReverseDataButton
        function ReverseDataButtonPushed2(app, event)
            inverseSelectedPoints(app);
        end

        % Button pushed function: UndoReverseButton
        function UndoReverseButtonPushed(app, event)
            undoLastSubstraction(app)
        end

        % Button pushed function: FinishEditingButton
        function FinishEditingButtonPushed2(app, event)
            % Prompt the user to choose between saving and replacing the original file or saving as a new file
            choice = questdlg('Do you want to save and replace the original data file or save as a new file?', ...
                              'Confirm Save', ...
                              'Replace Original', 'Save As New File', 'Cancel', 'Cancel');
            
            % Handle the user's response
            switch choice
                case 'Replace Original'
                    % Call the function to save edited data and update the UI
                    app.saveEditedDataAndUpdateUI();
                    
                case 'Save As New File'
                    % Attempt to prompt the user to specify a new file name and location
                    try
                        [file, path] = uiputfile({'*.csv'; '*.xlsx'; '*.mat'}, 'Save As New File');
                        if isequal(file, 0) || isequal(path, 0)
                            % User canceled the save as new file operation
                            msgbox('Save operation canceled.', 'Canceled');
                        else
                            % Update the DataFilePath property to the new file path
                            app.DataFilePath = fullfile(path, file);
                            
                            % Save the data to the new file and update the UI
                            app.saveEditedDataAndUpdateUI();
                        end
                    catch ME
                        % If there's an error with uiputfile, log the error and provide a fallback
                        disp(['Error opening uiputfile: ', ME.message]);
                        % Fallback: Ask user to input the file name and path via dialog
                        filePrompt = inputdlg({'Enter the file path and name (e.g., C:\Users\test.csv):'}, ...
                                              'Manual File Path Input', [1 50]);
                        if isempty(filePrompt)
                            % User canceled the manual input operation
                            msgbox('Save operation canceled.', 'Canceled');
                        else
                            % Use the provided file path from the input dialog
                            app.DataFilePath = filePrompt{1};
                            % Save the data to the specified file and update the UI
                            app.saveEditedDataAndUpdateUI();
                        end
                    end
                    
                case 'Cancel'
                    % User canceled the operation
                    msgbox('Operation canceled.', 'Canceled');
            end
        end

        % Button pushed function: SaveDataButton
        function SaveDataButtonPushed2(app, event)
            saveEditedData(app);
            exportCurrentK(app);
        end

        % Button pushed function: DeletedTdataButton
        function DeletedTdataButtonPushed2(app, event)
            deleteSelectedPoints(app);
        end

        % Button pushed function: PreviousSensorButton
        function PreviousSensorButtonPushed2(app, event)
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

        % Button pushed function: NextSensorButton
        function NextSensorButtonPushed2(app, event)
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

        % Button pushed function: autoClean
        function autoCleanButtonPushed(app, event)
            plotExampleCleanedSapflow(app);
        end

        % Button pushed function: StartTrainingButton
        function StartTrainingButtonPushed2(app, event)
            cleanAndTrainSapflowModel(app);
        end

        % Button pushed function: StartPredictingButton
        function StartPredictingButtonPushed(app, event)
            startPrediction(app);
        end

        % Button pushed function: OutputPathButton
        function OutputPathButtonPushed2(app, event)
            % Open a dialog to select a folder
            selectedPath = uigetdir();
            
            % Check if the user canceled the selection
            if selectedPath == 0
                % User canceled the dialog, you can handle it accordingly
                disp('User canceled the path selection.');
                return;
            end
            
            % Set the selected path to the Output EditField
            app.Output.Value = selectedPath;
            
            % Display the selected path in the TextArea or Console for confirmation
            disp(['Selected Output Path: ', selectedPath]);
            app.TextArea.Value = [app.TextArea.Value; {['Selected Output Path: ', selectedPath]}];
            scroll(app.TextArea, "bottom");
        end

        % Button pushed function: RawDataButton
        function RawDataButtonPushed2(app, event)
            try
                % Get checked sensors from the tree
                checkedNodes = app.Tree.CheckedNodes;
                
                % Filter out the top-level "Sensors" node if it's selected
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));
                
                % Ensure at least one valid sensor is selected
                if isempty(validSensorNodes)
                    % Use msgbox or update TextArea with the message
                    msgbox('Please select at least one valid sensor.', 'No Sensor Selected', 'warn');
                    return;
                end
                
                % Initialize variables to accumulate data
                combinedRawData = table();
                sensorNames = {}; % To store the names of the sensors being loaded
                
                % Iterate over each selected sensor and load the raw data
                for i = 1:length(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    
                    % Load raw data for the current sensor
                    rawData = loadRawData(app, sensorName);
                    
                    % Rename the sensor data column to include the sensor name
                    rawData.Properties.VariableNames{2} = sensorName; % Assumes data is in the second column
                    
                    % Store the sensor name for later use
                    sensorNames{end+1} = sensorName;
                    
                    % Align data by TIMESTAMP and merge
                    if isempty(combinedRawData)
                        combinedRawData = rawData;
                    else
                        % Merge tables by TIMESTAMP, keeping all timestamps from both tables
                        combinedRawData = outerjoin(combinedRawData, rawData, 'Keys', 'TIMESTAMP', ...
                            'MergeKeys', true, 'Type', 'full', 'LeftVariables', 1:size(combinedRawData, 2), ...
                            'RightVariables', sensorName);
                    end
                end
                
                % Update UITable5 with the combined raw data
                app.UITable5.Data = combinedRawData;
                
                % Set the column names in UITable5 to match the sensor names
                combinedColumnNames = combinedRawData.Properties.VariableNames;
                app.UITable5.ColumnName = combinedColumnNames;
                
                % Plot the raw data for each sensor on UIAxes6_4
                cla(app.UIAxes6_4); % Clear existing plots
                hold(app.UIAxes6_4, 'on');
                
                % Generate distinct colors for each sensor
                colors = lines(length(sensorNames)); 
                colorIndex = 1;
                
                for i = 1:length(sensorNames)
                    % Escape underscores to avoid subscripts in the legend
                    displayName = strrep(sensorNames{i}, '_', '\_');
                    % Use the actual sensor name to plot each sensor's data with a different color
                    sensorName = sensorNames{i};
                    plot(app.UIAxes6_4, combinedRawData.TIMESTAMP, combinedRawData{:, sensorName}, ...
                        'DisplayName', displayName, 'Color', colors(colorIndex, :));
                    colorIndex = colorIndex + 1;
                end
                
                hold(app.UIAxes6_4, 'off');
                
                % Set plot labels and title
                xlabel(app.UIAxes6_4, 'Timestamp');
                ylabel(app.UIAxes6_4, 'Raw Data');
                title(app.UIAxes6_4, 'Raw Data for Selected Sensors');
                legend(app.UIAxes6_4, 'show');
                
            catch ME
                % Handle any unexpected errors
                msgbox(sprintf('An error occurred, you need to check at least one sensor: %s', ME.message), 'Error', 'error');
                app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('An error occurred while loading raw data: %s', ME.message)}];
                scroll(app.TextArea_2, "bottom");
                drawnow;
            end

        end

        % Button pushed function: PredictedDataButton
        function PredictedDataButtonPushed2(app, event)
            try
                % Get checked sensors from the tree
                checkedNodes = app.Tree.CheckedNodes;
                
                % Filter out the top-level "Sensors" node if it's selected
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));
                
                % Ensure at least one valid sensor is selected
                if isempty(validSensorNodes)
                    % Use msgbox or update TextArea with the message
                    msgbox('Please select at least one valid sensor.', 'No Sensor Selected', 'warn');
                    return;
                end
                
                % Initialize variables to accumulate data
                combinedPredictedData = table();
                sensorNames = {}; % To store the names of the sensors being loaded
                modelOptionsPerSensor = cell(1, length(validSensorNodes));
                
                % Iterate over each selected sensor to load available model types
                for i = 1:length(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    modelFiles = dir(fullfile(app.Output.Value, 'PredictedData', sprintf('Predicted_*_%s.csv', sensorName)));
                    
                    % Collect available model types for the sensor
                    modelTypes = cell(length(modelFiles), 1);
                    for j = 1:length(modelFiles)
                        [~, name, ~] = fileparts(modelFiles(j).name);
                        extractedType = extractBetween(name, 'Predicted_', sprintf('_%s', sensorName));
                        if ~isempty(extractedType)
                            modelTypes{j} = extractedType{1}; % Ensure it's a char array
                        end
                    end
                    modelOptionsPerSensor{i} = unique(modelTypes(~cellfun('isempty', modelTypes)));
                end
                
                % Ask the user to select the model type for each sensor
                selectedModelTypes = cell(1, length(validSensorNodes));
                for i = 1:length(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    modelOptions = modelOptionsPerSensor{i};
                    [indx, tf] = listdlg('PromptString', sprintf('Select model type for sensor %s:', sensorName), ...
                                         'SelectionMode', 'single', ...
                                         'ListString', modelOptions, ...
                                         'ListSize', [260, 200]);  % Adjust the width and height
                    if tf
                        selectedModelTypes{i} = modelOptions{indx};
                    else
                        % If the user cancels the dialog, skip this sensor
                        selectedModelTypes{i} = [];
                    end
                end
        
                
                % Iterate over each selected sensor to load the predicted data
                for i = 1:length(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    selectedModelType = selectedModelTypes{i};
                    
                    if isempty(selectedModelType)
                        continue; % Skip sensors with no model type selected
                    end
                    
                    % Load predicted data for the current sensor and model type
                    predictedData = loadPredictedData(app, sensorName, selectedModelType);
                    
                    % Dynamically find the column name for the predicted sapflow data
                    sapflowColumnName = predictedData.Properties.VariableNames{find(contains(predictedData.Properties.VariableNames, 'PredictedSapflow'), 1)};
                    
                    % Extract only the TIMESTAMP and PredictedSapflow columns
                    predictedData = predictedData(:, {'TIMESTAMP', sapflowColumnName});
                    
                    % Rename the PredictedSapflow column to include the sensor name and model type
                    renamedColumn = sprintf('%s_%s', sensorName, selectedModelType);
                    predictedData.Properties.VariableNames{2} = renamedColumn;
                    
                    % Store the sensor name for later use
                    sensorNames{end+1} = renamedColumn;
                    
                    % Merge predicted data based on TIMESTAMP, using the longest range
                    if isempty(combinedPredictedData)
                        combinedPredictedData = predictedData;
                    else
                        % Merge tables by TIMESTAMP, keeping all timestamps from both tables
                        combinedPredictedData = outerjoin(combinedPredictedData, predictedData, 'Keys', 'TIMESTAMP', ...
                            'MergeKeys', true, 'Type', 'full', 'LeftVariables', 1:size(combinedPredictedData, 2), ...
                            'RightVariables', renamedColumn);
                    end
                end
                
                % Update UITable5_2 with the combined predicted data
                app.UITable5_2.Data = combinedPredictedData;
                
                % Set the column names in UITable5_2 to match the sensor names
                combinedColumnNames = combinedPredictedData.Properties.VariableNames;
                app.UITable5_2.ColumnName = combinedColumnNames;
                
                % Plot the predicted data for each sensor on UIAxes6_2
                cla(app.UIAxes6_2); % Clear existing plots
                hold(app.UIAxes6_2, 'on');
                
                % Generate distinct colors for each sensor
                colors = lines(length(sensorNames)); 
                colorIndex = 1;
                
                for i = 1:length(sensorNames)
                    % Escape underscores to avoid subscripts in the legend
                    displayName = strrep(sensorNames{i}, '_', '\_');
                    % Use the actual sensor name to plot each sensor's data with a different color
                    sensorName = sensorNames{i};
                    plot(app.UIAxes6_2, combinedPredictedData.TIMESTAMP, combinedPredictedData{:, sensorName}, ...
                        'DisplayName', displayName, 'Color', colors(colorIndex, :));
                    colorIndex = colorIndex + 1;
                end
                
                hold(app.UIAxes6_2, 'off');
                
                % Set plot labels and title
                xlabel(app.UIAxes6_2, 'Timestamp');
                ylabel(app.UIAxes6_2, 'Predicted Data');
                title(app.UIAxes6_2, 'Predicted Data for Selected Sensors');
                legend(app.UIAxes6_2, 'show');
                
            catch ME
                % Handle any unexpected errors
                msgbox(sprintf('An error occurred: %s', ME.message), 'Error', 'error');
                app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('An error occurred while loading predicted data: %s', ME.message)}];
                scroll(app.TextArea_2, "bottom");
                drawnow;
            end

        end

        % Button pushed function: GapFillButton
        function GapFillButtonPushed2(app, event)
            try
                % Get checked sensors from the tree
                checkedNodes = app.Tree.CheckedNodes;
        
                % Filter out the top-level "Sensors" node if it's selected
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));
        
                % Ensure at least one valid sensor is selected
                if isempty(validSensorNodes)
                    msgbox('Please select at least one valid sensor.', 'No Sensor Selected', 'warn');
                    return;
                end
        
                % Ensure that a model type is selected from app.Tree_3
                if isempty(app.Tree_3.CheckedNodes)
                    msgbox('Please select a model type.', 'No Model Type Selected', 'warn');
                    return;
                end
                modelType = app.Tree_3.CheckedNodes(1).Text; % Assuming only one model type is selected
        
                % Clear the existing plot and reset variables
                cla(app.UIAxes6_3, 'reset'); % Clear the plot completely
                legend(app.UIAxes6_3, 'off'); % Turn off the legend to reset it
                combinedGapFilledData = table(); % Reinitialize the combined gap-filled data table
                legendEntries = {}; % Reset legend entries
                legendHandles = []; % Reset legend handles
        
                % Colors for plotting different sensors
                colors = lines(length(validSensorNodes));
        
                % Get raw and predicted data from UITable5 and UITable5_2
                rawData = app.UITable5.Data;
                predictedData = app.UITable5_2.Data;
        
                % Use the correct TIMESTAMP column name from the raw data
                timestampColNameRaw = 'TIMESTAMP';
                timestampColNamePred = 'TIMESTAMP';
        
                % Iterate over each selected sensor
                for i = 1:length(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
        
                    % Construct the predicted sensor name based on the selected model type
                    predictedSensorName = sprintf('%s_%s', sensorName, modelType);
        
                    % Ensure that the columns for the current sensor are available
                    if ~ismember(sensorName, rawData.Properties.VariableNames) || ...
                       ~ismember(predictedSensorName, predictedData.Properties.VariableNames)
                        msgbox(sprintf('Data for sensor %s not found in raw or predicted data.', sensorName), ...
                               'Data Not Found', 'warn');
                        continue;
                    end
        
                    % Extract the raw and predicted data for the current sensor
                    rawSensorData = rawData(:, {timestampColNameRaw, sensorName});
                    predictedSensorData = predictedData(:, {timestampColNamePred, predictedSensorName});
        
                    % Align the data by TIMESTAMP and fill gaps in raw data using predictions
                    gapFilledData = rawSensorData;
                    gapIdx = isnan(gapFilledData{:, 2});
                    gapFilledData{gapIdx, 2} = predictedSensorData{gapIdx, 2};
        
                    % Merge the gap-filled data into combined data
                    if isempty(combinedGapFilledData)
                        combinedGapFilledData = gapFilledData;
                    else
                        combinedGapFilledData = outerjoin(combinedGapFilledData, gapFilledData, ...
                                                          'Keys', timestampColNameRaw, ...
                                                          'MergeKeys', true, 'Type', 'full', ...
                                                          'LeftVariables', 1:size(combinedGapFilledData, 2), ...
                                                          'RightVariables', sensorName);
                    end
        
                    % Plot the raw data for the current sensor
                    hold(app.UIAxes6_3, 'on');
                    rawPlotHandle = plot(app.UIAxes6_3, rawSensorData{:, timestampColNameRaw}, rawSensorData{:, 2}, ...
                        'Color', colors(i, :), 'LineStyle', '-', 'LineWidth', 1);
        
                    % Plot the gap-filled data, highlighting only the filled gaps without connecting lines
                    filledIdx = find(gapIdx); % Indices where gaps were filled
                    gapFilledPlotHandle = plot(app.UIAxes6_3, gapFilledData{filledIdx, timestampColNameRaw}, gapFilledData{filledIdx, 2}, ...
                        'Color', colors(i, :), 'LineStyle', 'none', 'Marker', 'o', 'MarkerSize', 1);
        
                    % Add unique legend entries for each sensor's raw and gap-filled data
                    legendHandles = [legendHandles, rawPlotHandle, gapFilledPlotHandle];
                    legendEntries = [legendEntries, sprintf('%s Raw', strrep(sensorName, '_', '\_')), ...
                                     sprintf('%s Gap-Filled', strrep(sensorName, '_', '\_'))];
                end
        
                % Add TIMESTAMP, VPD, and PAR_Den_Avg columns to the gap-filled data
                combinedGapFilledData.TIMESTAMP = rawData.TIMESTAMP;
                if ismember('VPD', rawData.Properties.VariableNames)
                    combinedGapFilledData.VPD = rawData.VPD;
                end
                if ismember('PAR_Den_Avg', rawData.Properties.VariableNames)
                    combinedGapFilledData.PAR_Den_Avg = rawData.PAR_Den_Avg;
                end
        
                % Set plot labels and title
                xlabel(app.UIAxes6_3, 'Timestamp');
                ylabel(app.UIAxes6_3, 'Data');
                title(app.UIAxes6_3, 'Gap-Filled Data for Selected Sensors');
                
                % Set the legend with unique entries
                legend(app.UIAxes6_3, legendHandles, legendEntries);
                
                hold(app.UIAxes6_3, 'off');
        
                % Save the gap-filled data if needed
                app.GapFilledData = combinedGapFilledData;
                saveGapFilledData(app, combinedGapFilledData, validSensorNodes, timestampColNameRaw);
            catch ME
                % Handle errors and display a message to the user
                errordlg(sprintf('An error occurred: %s', ME.message), 'Error');
                disp(['Error in GapFillButtonPushed: ', ME.message]);
            end

        end

        % Button pushed function: ExportKvaluesButton
        function ExportKvaluesButtonPushed2(app, event)
            exportKValuesAfterGapFill(app);
        end

        % Button pushed function: ExportFvaluesButton
        function ExportFvaluesButtonPushed2(app, event)
            exportFValuesAfterGapFill(app);
        end

        % Menu selected function: CreateNewMenu
        function CreateNewMenuSelected(app, event)
                        % Check if ProjectName is defined
            if isempty(app.ProjectNameEditField.Value)
                msgbox('Please provide a project name.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Project name is not defined.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
            
            % Ensure the project name is unique
            if strcmp(app.ProjectNameEditField.Value, app.ProjectName)
                msgbox('The project name must be different from the current loaded project.', 'Error', 'error');
                app.OutputTextArea.Value = [app.OutputTextArea.Value; {'The project name must be different from the current loaded project.'}];
                scroll(app.OutputTextArea, "bottom");
                return;
            end
        
            % Check if DataFilePath is defined
            if isempty(app.DataFilePathEditField.Value)
                % Prompt the user to select the data path
                [file, path] = uigetfile({'*.csv;*.xlsx', 'CSV and Excel Files'; '*.*', 'All Files'}, 'Select Data File');
                if isequal(file, 0)
                    app.OutputTextArea.Value = [app.OutputTextArea.Value; {'User canceled the data file selection.'}];
                    scroll(app.OutputTextArea, "bottom");
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
                scroll(app.OutputTextArea, "bottom");
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
            scroll(app.OutputTextArea, "bottom");
            
            % Notify the user that the project has been created
            msgbox(['Project created and saved to: ', app.ProjectFilePath], 'Project Created', 'help');
        
            % Load the newly created project into the current configuration
            loadProject(app, app.ProjectFilePath);
        end

        % Menu selected function: OpenFileMenu
        function OpenFileMenuSelected(app, event)
            OpenProjectButtonPushed2(app);
        end

        % Menu selected function: SaveMenu
        function SaveMenuSelected(app, event)
            SaveProjectButtonPushed2(app);
        end

        % Menu selected function: ExportKMenu
        function ExportKMenuSelected(app, event)

            % Check if there is a plot on app.UIAxes6_4
            if isempty(app.UIAxes6_4.Children)
                % No plot exists, do one thing
                msgbox('You have not finished gap-filling, exporting the current K only...', 'Gap-filling status');
                exportCurrentK(app);
                
            else
                % A plot exists, do another thing
                msgbox('Exporting gap-filled K...', 'Gap-filling status');
                exportFValuesAfterGapFill(app);
            end

        end

        % Menu selected function: ExitMenu
        function ExitMenuSelected(app, event)
            delete(app.SapFlowerUIFigure);
        end

        % Menu selected function: DeleteSelectedDataMenu
        function DeleteSelectedDataMenuSelected(app, event)
            deleteSelectedPoints(app);
        end

        % Menu selected function: ReverseSelectedDataMenu
        function ReverseSelectedDataMenuSelected(app, event)
            inverseSelectedPoints(app);
        end

        % Menu selected function: UndoMenu
        function UndoMenuSelected(app, event)
            if isempty(app.ActionHistory)
                msgbox('No actions to undo');
                return;
            end
            
            % Get the last action from the history
            lastAction = app.ActionHistory{end};
            
            % Remove the last action from the history
            app.ActionHistory(end) = [];
            
            % Perform the undo based on the last action
            switch lastAction
                case 'delete'
                    app.undoLastDeletion();
                case 'inverse'
                    app.undoLastSubstraction();
                otherwise
                    msgbox('Unknown action in history');
            end
        end

        % Menu selected function: UndoAllMenu
        function UndoAllMenuSelected(app, event)
            if isempty(app.ActionHistory)
                msgbox('No actions to undo');
                return;
            end
        
            % Undo each action, starting from the last one
            while ~isempty(app.ActionHistory)
                lastAction = app.ActionHistory{end};
                app.ActionHistory(end) = [];
                
                % Perform the undo based on the last action
                switch lastAction
                    case 'delete'
                        app.undoLastDeletion();
                    case 'inverse'
                        app.undoLastSubstraction();
                    otherwise
                        msgbox('Unknown action in history');
                end
            end
        end

        % Menu selected function: GapFillMenu
        function GapFillMenuSelected(app, event)
            app.gapFillAndPlotData();
        end

        % Menu selected function: HomePageMenu
        function HomePageMenuSelected(app, event)
            web('https://www.jiaxin-wang.com/', '-browser');
        end

        % Menu selected function: GitHubMenu
        function GitHubMenuSelected(app, event)
            web('https://github.com/JiaxinWang123/SapFlower/', '-browser')
        end

        % Menu selected function: LatestVersionMenu
        function LatestVersionMenuSelected(app, event)
            web('https://doi.org/10.5281/zenodo.13665919', '-browser')
        end

        % Menu selected function: TrainingOptionsMenu
        function TrainingOptionsMenuSelected(app, event)
            web('https://www.mathworks.com/help/deeplearning/ug/create-bilstm-function.html/','-browser')
        end

        % Menu selected function: JiaxinWangMenu
        function JiaxinWangMenuSelected(app, event)
            text = {
                '    Contact Jiaxin Wang'
                ''
                '    I am currently working at Virginia Tech as a postdoctoral associate.'
                '    If you have any inquires and questions about SapFlower, Please send'
                '    me an email at: jiaxin.wang@vt.edu; jiaxinwang362@gmail.com'
                '    '
                ''
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

        % Menu selected function: DarkModeMenu
        function DarkModeMenuSelected(app, event)
            app.SapFlowerUIFigure.Theme = "dark";
        end

        % Menu selected function: LightModeMenu
        function LightModeMenuSelected(app, event)
            app.SapFlowerUIFigure.Theme = "light";
        end

        % Menu selected function: ManualMenu
        function ManualMenuSelected(app, event)
            web("https://drive.google.com/file/d/1SY2H-VPlrfjW-QAQ76gNsfPjQdndGrBF/view?usp=drive_link", '-browser');
        end

        % Button pushed function: ExportDailyWaterUse
        function ExportDailyWaterUseButtonPushed2(app, event)
            try
                % Step 1: Check if a valid output path is defined
                outputPath = app.Output.Value;
                if isempty(outputPath) || ~isfolder(outputPath)
                    errordlg('Please set a valid output path in the Output field.', 'Invalid Output Path');
                    return;
                end
                
                % Step 2: Create export folder for water use if not already existing
                exportFolderPath = fullfile(outputPath, 'SapFluxDensity');
                if ~isfolder(exportFolderPath)
                    mkdir(exportFolderPath);
                end
                
                % Step 3: Generate output filename with timestamp
                app.timestamp = datestr(now, 'yyyymmdd_HHMMSS');
                exportFilename = fullfile(exportFolderPath, sprintf('SapFluxDensity_%s.csv', app.timestamp));
                
                app.startWait('Calculating and exporting sap flow after gap-fill...');
                
                % Step 4: Prompt user for coefficients 'a' and 'b'
                prompt = {'Enter the value for coefficient a:', 'Enter the value for coefficient b:'};
                dlgtitle = 'Input Coefficients';
                dims = [1 50];
                definput = {'0.11899', '1.231'};
                answer = inputdlg(prompt, dlgtitle, dims, definput);
                if isempty(answer)
                    app.endWait();
                    return; % Exit if the user cancels the input dialog
                end
                
                % Convert user input to numerical values
                a = str2double(answer{1});
                b = str2double(answer{2});
                if isnan(a) || isnan(b)
                    errordlg('Invalid input for coefficients. Please enter valid numbers.', 'Invalid Input');
                    app.endWait();
                    return;
                end
                
                % Step 5: Get user-defined time interval (in minutes) from app.TimeStepIncrementsminEditField
                timeStepInMinutes = app.TimeStepIncrementsminEditField.Value;  % Get the user-defined time interval in minutes
                if isempty(timeStepInMinutes) || timeStepInMinutes <= 0
                    errordlg('Please enter a valid time step increment in minutes.', 'Invalid Time Step');
                    app.endWait();
                    return;
                end
                
                % Convert time step into seconds (as water use is calculated per second)
                timeStepInSeconds = timeStepInMinutes * 60;
                
                % Step 6: Check if user selected hourly or daily export
                exportType = app.ExportTypeDropDown.Value;  % Dropdown value either 'Hourly' or 'Daily'
                timestampData = app.GapFilledData.TIMESTAMP;

                % Clear the previous plot before re-plotting
                cla(app.UIAxes6_7, 'reset'); % clear and reset the axes


                if strcmp(exportType, 'Daily')
                    % Aggregate data by day
                    dateData = dateshift(datetime(timestampData), 'start', 'day'); % Convert timestamp to date only (daily aggregation)
                    combinedData = table(dateData, 'VariableNames', {'Date'});
                    groupingVar = 'Date';
                elseif strcmp(exportType, 'Hourly')
                    % Aggregate data by hour
                    dateData = dateshift(datetime(timestampData), 'start', 'hour'); % Convert timestamp to hourly aggregation
                    combinedData = table(dateData, 'VariableNames', {'DateTime'});
                    groupingVar = 'DateTime';
                end
                
                % Step 7: Iterate through all checked sapflow sensors and calculate water use
                checkedNodes = app.Tree.CheckedNodes;
                validSensorNodes = checkedNodes(~strcmp({checkedNodes.Text}, 'Sensors'));
                
                hold(app.UIAxes6_7, 'on'); % Prepare for plotting
                
                for i = 1:numel(validSensorNodes)
                    sensorName = validSensorNodes(i).Text;
                    
                    % Ensure gap-filled data is available
                    if ismember(sensorName, app.GapFilledData.Properties.VariableNames)
                        % Extract gap-filled sapflow data for the sensor
                        sapflowData = app.GapFilledData.(sensorName);
                        
                        % Calculate water use per second using the formula F = a * (K)^b
                        waterUsePerSecond = a * (sapflowData.^b);
                        
                        % Multiply by the user-defined time interval (in seconds) to get water use for that interval
                        waterUsePerInterval = waterUsePerSecond * timeStepInSeconds;
                        
                        % Create a temporary table with Date/DateTime and water use data
                        tempTable = table(dateData, waterUsePerInterval, 'VariableNames', {groupingVar, ['SapFluxDensity_', sensorName]});
                        
                        % Group data by Date or DateTime (based on export type) and sum the water use
                        aggregatedWaterUse = groupsummary(tempTable, groupingVar, 'sum', ['SapFluxDensity_', sensorName]);
                        summedWaterUseVarName = ['sum_SapFluxDensity_', sensorName];
                        
                        % Append to the combined water use table
                        combinedData = join(combinedData, aggregatedWaterUse(:, {groupingVar, summedWaterUseVarName}), 'Keys', groupingVar);
                        
                        % Plot the water use on app.UIAxes6_7
                        plot(app.UIAxes6_7, aggregatedWaterUse.(groupingVar), aggregatedWaterUse.(summedWaterUseVarName), ...
                             'LineWidth', 1.5, 'DisplayName', strrep(sensorName, '_', '\_'));
                    else
                        % Log missing data
                        app.TextArea_2.Value = [app.TextArea_2.Value; {sprintf('No gap-filled data available for sensor %s.', sensorName)}];
                        scroll(app.TextArea_2, "bottom");
                    end
                end
                
                % Step 8: Export the combined water use data to CSV
                try
                    writetable(combinedData, exportFilename);
                    app.TextArea_2.Value = [app.TextArea_2.Value; {['Sap Flux Density exported successfully to ', exportFilename]}];
                    scroll(app.TextArea_2, "bottom");
                catch err
                    errordlg(err.message, 'Export failed');
                    app.TextArea_2.Value = [app.TextArea_2.Value; {['Error exporting Sap Flux Density: ', err.message]}];
                    scroll(app.TextArea_2, "bottom");
                end
                
                % Set axis labels and legend
                if strcmp(exportType, 'Daily')
                    xlabel(app.UIAxes6_7, 'Date (Daily Sap Flux Density)');
                elseif strcmp(exportType, 'Hourly')
                    xlabel(app.UIAxes6_7, 'DateTime (Hourly Sap Flux Density)');
                end
                ylabel(app.UIAxes6_7, 'Sap Flux Density');
                title(app.UIAxes6_7, {sprintf('Sap Flux Density for sensor %s.', sensorName)});
                legend(app.UIAxes6_7, 'show');
                hold(app.UIAxes6_7, 'off'); % Release the plot hold
                
            catch ME
                % Handle errors and display them
                errordlg(ME.message, 'Error');
                app.TextArea_2.Value = [app.TextArea_2.Value; {['An error occurred: ', ME.message]}];
                scroll(app.TextArea_2, "bottom");
            end
            
            app.endWait();
        end

        % Close request function: SapFlowerUIFigure
        function SapFlowerUIFigureCloseRequest(app, event)

            % Check if a project is loaded or data was edited
            app.isEdited = checkIfDataEdited(app); % Call the method to check edit state
            needsSavePrompt = app.projectLoaded || app.isEdited;
        
            if needsSavePrompt
                % Prompt the user to save changes
                choice = questdlg('Do you want to save the project and edited data before exiting?', ...
                    'Save Changes', ...
                    'Yes', 'No', 'Cancel', 'Cancel');
        
                % Handle the user's response
                switch choice
                    case 'Yes'
                        % Save edits if needed
                        if app.isEdited
                            app.saveEditedData();
                        end
                        if app.projectLoaded
                            app.saveProject();
                        end
                        disp('Project and data saved.');
        
                    case 'No'
                        disp('Exiting without saving.');
        
                    case 'Cancel'
                        % Prevent app closure
                        app.TextArea_2.Value = [app.TextArea_2.Value; {'Exit canceled'}];
                        scroll(app.TextArea_2, "bottom");
                        app.OutputTextArea.Value = [app.OutputTextArea.Value; {'Exit canceled'}];
                        scroll(app.OutputTextArea, "bottom");
                        return;
                end
            end
        
            % Close the app if no prompt is needed or after handling prompt
            disp('Exiting the app.');
            delete(app);

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
            app.SapFlowerUIFigure.CloseRequestFcn = createCallbackFcn(app, @SapFlowerUIFigureCloseRequest, true);
            app.SapFlowerUIFigure.Scrollable = 'on';
            app.SapFlowerUIFigure.HandleVisibility = 'on';
            app.SapFlowerUIFigure.Tag = 'Version 1.0';
            app.SapFlowerUIFigure.WindowStyle = 'modal';

            % Create FileMenu
            app.FileMenu = uimenu(app.SapFlowerUIFigure);
            app.FileMenu.Text = 'File';

            % Create CreateNewMenu
            app.CreateNewMenu = uimenu(app.FileMenu);
            app.CreateNewMenu.MenuSelectedFcn = createCallbackFcn(app, @CreateNewMenuSelected, true);
            app.CreateNewMenu.Separator = 'on';
            app.CreateNewMenu.Accelerator = 'N';
            app.CreateNewMenu.Text = 'Create New';

            % Create OpenFileMenu
            app.OpenFileMenu = uimenu(app.FileMenu);
            app.OpenFileMenu.MenuSelectedFcn = createCallbackFcn(app, @OpenFileMenuSelected, true);
            app.OpenFileMenu.Accelerator = 'O';
            app.OpenFileMenu.Text = 'Open File';

            % Create SaveMenu
            app.SaveMenu = uimenu(app.FileMenu);
            app.SaveMenu.MenuSelectedFcn = createCallbackFcn(app, @SaveMenuSelected, true);
            app.SaveMenu.Accelerator = 'S';
            app.SaveMenu.Text = 'Save';

            % Create ExportKMenu
            app.ExportKMenu = uimenu(app.FileMenu);
            app.ExportKMenu.MenuSelectedFcn = createCallbackFcn(app, @ExportKMenuSelected, true);
            app.ExportKMenu.Accelerator = 'K';
            app.ExportKMenu.Text = 'Export K';

            % Create ExitMenu
            app.ExitMenu = uimenu(app.FileMenu);
            app.ExitMenu.MenuSelectedFcn = createCallbackFcn(app, @ExitMenuSelected, true);
            app.ExitMenu.Accelerator = 'Q';
            app.ExitMenu.Text = 'Exit';

            % Create EditMenu
            app.EditMenu = uimenu(app.SapFlowerUIFigure);
            app.EditMenu.Text = 'Edit';

            % Create CleanDataMenu
            app.CleanDataMenu = uimenu(app.EditMenu);
            app.CleanDataMenu.Enable = 'off';
            app.CleanDataMenu.Text = 'CleanData';

            % Create SmoothdataMenu_2
            app.SmoothdataMenu_2 = uimenu(app.CleanDataMenu);
            app.SmoothdataMenu_2.Enable = 'off';
            app.SmoothdataMenu_2.Text = 'Smooth data';

            % Create SimpleMovingAverageSMAMenu_2
            app.SimpleMovingAverageSMAMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SimpleMovingAverageSMAMenu_2.Enable = 'off';
            app.SimpleMovingAverageSMAMenu_2.Text = 'Simple Moving Average (SMA)';

            % Create ExponentialMovingAverageEMAMenu_2
            app.ExponentialMovingAverageEMAMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.ExponentialMovingAverageEMAMenu_2.Enable = 'off';
            app.ExponentialMovingAverageEMAMenu_2.Text = 'Exponential Moving Average (EMA)';

            % Create KalmanFilterMenu_2
            app.KalmanFilterMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.KalmanFilterMenu_2.Enable = 'off';
            app.KalmanFilterMenu_2.Text = 'Kalman Filter';

            % Create SeasonalDecompositionofTimeSeriesSTLMenu_2
            app.SeasonalDecompositionofTimeSeriesSTLMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SeasonalDecompositionofTimeSeriesSTLMenu_2.Enable = 'off';
            app.SeasonalDecompositionofTimeSeriesSTLMenu_2.Text = 'Seasonal Decomposition of Time Series (STL)';

            % Create GaussianProcessRegressionMenu_2
            app.GaussianProcessRegressionMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.GaussianProcessRegressionMenu_2.Enable = 'off';
            app.GaussianProcessRegressionMenu_2.Text = 'Gaussian Process Regression';

            % Create SavitzkyGolayFilterMenu_2
            app.SavitzkyGolayFilterMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.SavitzkyGolayFilterMenu_2.Enable = 'off';
            app.SavitzkyGolayFilterMenu_2.Text = 'Savitzky-Golay Filter';

            % Create WaveletTransformMenu_2
            app.WaveletTransformMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.WaveletTransformMenu_2.Enable = 'off';
            app.WaveletTransformMenu_2.Text = 'Wavelet Transform';

            % Create HiddenMarkovModelHMMMenu_2
            app.HiddenMarkovModelHMMMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.HiddenMarkovModelHMMMenu_2.Enable = 'off';
            app.HiddenMarkovModelHMMMenu_2.Text = 'Hidden Markov Model (HMM)';

            % Create IsolationForestMenu_2
            app.IsolationForestMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.IsolationForestMenu_2.Enable = 'off';
            app.IsolationForestMenu_2.Text = 'Isolation Forest';

            % Create RecurrentNeuralNetworksRNNsMenu_2
            app.RecurrentNeuralNetworksRNNsMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.RecurrentNeuralNetworksRNNsMenu_2.Enable = 'off';
            app.RecurrentNeuralNetworksRNNsMenu_2.Text = 'Recurrent Neural Networks (RNNs)';

            % Create DynamicTimeWarpingDTWMenu_2
            app.DynamicTimeWarpingDTWMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.DynamicTimeWarpingDTWMenu_2.Enable = 'off';
            app.DynamicTimeWarpingDTWMenu_2.Text = 'Dynamic Time Warping (DTW)';

            % Create QuantileRegressionMenu_2
            app.QuantileRegressionMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.QuantileRegressionMenu_2.Enable = 'off';
            app.QuantileRegressionMenu_2.Text = 'Quantile Regression';

            % Create BayesianFilteringMenu_2
            app.BayesianFilteringMenu_2 = uimenu(app.SmoothdataMenu_2);
            app.BayesianFilteringMenu_2.Enable = 'off';
            app.BayesianFilteringMenu_2.Text = 'Bayesian Filtering';

            % Create GapFillMenu
            app.GapFillMenu = uimenu(app.EditMenu);
            app.GapFillMenu.MenuSelectedFcn = createCallbackFcn(app, @GapFillMenuSelected, true);
            app.GapFillMenu.Accelerator = 'G';
            app.GapFillMenu.Text = 'GapFill';

            % Create DeleteSelectedDataMenu
            app.DeleteSelectedDataMenu = uimenu(app.EditMenu);
            app.DeleteSelectedDataMenu.MenuSelectedFcn = createCallbackFcn(app, @DeleteSelectedDataMenuSelected, true);
            app.DeleteSelectedDataMenu.Accelerator = 'D';
            app.DeleteSelectedDataMenu.Text = 'DeleteSelectedData';

            % Create ReverseSelectedDataMenu
            app.ReverseSelectedDataMenu = uimenu(app.EditMenu);
            app.ReverseSelectedDataMenu.MenuSelectedFcn = createCallbackFcn(app, @ReverseSelectedDataMenuSelected, true);
            app.ReverseSelectedDataMenu.Accelerator = 'R';
            app.ReverseSelectedDataMenu.Text = 'ReverseSelectedData';

            % Create UndoMenu
            app.UndoMenu = uimenu(app.EditMenu);
            app.UndoMenu.MenuSelectedFcn = createCallbackFcn(app, @UndoMenuSelected, true);
            app.UndoMenu.Accelerator = 'Z';
            app.UndoMenu.Text = 'Undo';

            % Create UndoAllMenu
            app.UndoAllMenu = uimenu(app.EditMenu);
            app.UndoAllMenu.MenuSelectedFcn = createCallbackFcn(app, @UndoAllMenuSelected, true);
            app.UndoAllMenu.Accelerator = 'A';
            app.UndoAllMenu.Text = 'UndoAll';

            % Create ViewMenu
            app.ViewMenu = uimenu(app.SapFlowerUIFigure);
            app.ViewMenu.ForegroundColor = [0 0 0];
            app.ViewMenu.Text = 'View';

            % Create DarkModeMenu
            app.DarkModeMenu = uimenu(app.ViewMenu);
            app.DarkModeMenu.MenuSelectedFcn = createCallbackFcn(app, @DarkModeMenuSelected, true);
            app.DarkModeMenu.ForegroundColor = [0 0 0];
            app.DarkModeMenu.Text = 'DarkMode';

            % Create LightModeMenu
            app.LightModeMenu = uimenu(app.ViewMenu);
            app.LightModeMenu.MenuSelectedFcn = createCallbackFcn(app, @LightModeMenuSelected, true);
            app.LightModeMenu.ForegroundColor = [0 0 0];
            app.LightModeMenu.Text = 'LightMode';

            % Create HelpMenu
            app.HelpMenu = uimenu(app.SapFlowerUIFigure);
            app.HelpMenu.Text = 'Help';

            % Create AboutMenu
            app.AboutMenu = uimenu(app.HelpMenu);
            app.AboutMenu.MenuSelectedFcn = createCallbackFcn(app, @AboutMenuSelected, true);
            app.AboutMenu.Text = 'About';

            % Create ManualMenu
            app.ManualMenu = uimenu(app.HelpMenu);
            app.ManualMenu.MenuSelectedFcn = createCallbackFcn(app, @ManualMenuSelected, true);
            app.ManualMenu.Text = 'Manual';

            % Create HomePageMenu
            app.HomePageMenu = uimenu(app.HelpMenu);
            app.HomePageMenu.MenuSelectedFcn = createCallbackFcn(app, @HomePageMenuSelected, true);
            app.HomePageMenu.Text = 'HomePage';

            % Create GitHubMenu
            app.GitHubMenu = uimenu(app.HelpMenu);
            app.GitHubMenu.MenuSelectedFcn = createCallbackFcn(app, @GitHubMenuSelected, true);
            app.GitHubMenu.Text = 'GitHub';

            % Create LatestVersionMenu
            app.LatestVersionMenu = uimenu(app.HelpMenu);
            app.LatestVersionMenu.MenuSelectedFcn = createCallbackFcn(app, @LatestVersionMenuSelected, true);
            app.LatestVersionMenu.Text = 'LatestVersion';

            % Create TrainingOptionsMenu
            app.TrainingOptionsMenu = uimenu(app.HelpMenu);
            app.TrainingOptionsMenu.MenuSelectedFcn = createCallbackFcn(app, @TrainingOptionsMenuSelected, true);
            app.TrainingOptionsMenu.Text = 'TrainingOptions';

            % Create JiaxinWangMenu
            app.JiaxinWangMenu = uimenu(app.HelpMenu);
            app.JiaxinWangMenu.MenuSelectedFcn = createCallbackFcn(app, @JiaxinWangMenuSelected, true);
            app.JiaxinWangMenu.Text = 'JiaxinWang';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.SapFlowerUIFigure);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.Scrollable = 'on';
            app.GridLayout.BackgroundColor = [0.1765 0.4118 0.4078];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.GridLayout);
            app.TabGroup.Layout.Row = [1 9];
            app.TabGroup.Layout.Column = [1 6];

            % Create ProjectConfigurationTab
            app.ProjectConfigurationTab = uitab(app.TabGroup);
            app.ProjectConfigurationTab.Title = 'Project Configuration';
            app.ProjectConfigurationTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create GridLayout16
            app.GridLayout16 = uigridlayout(app.ProjectConfigurationTab);
            app.GridLayout16.ColumnWidth = {179, '1.56x', '1.26x', 92, '1.44x', '1.49x', 82, '1.46x', '1x', 99, '4.64x', 229};
            app.GridLayout16.RowHeight = {30, 30, 30, 30, 30, 29, '9.1x', '1x'};
            app.GridLayout16.ColumnSpacing = 0.461538461538462;
            app.GridLayout16.RowSpacing = 8.88888888888889;
            app.GridLayout16.Padding = [0.461538461538462 8.88888888888889 0.461538461538462 8.88888888888889];
            app.GridLayout16.BackgroundColor = [0.9608 0.9608 0.9608];

            % Create Image
            app.Image = uiimage(app.GridLayout16);
            app.Image.Layout.Row = [1 6];
            app.Image.Layout.Column = 12;
            app.Image.URL = 'https://github.com/JiaxinWang123/SapFlower';
            app.Image.AltText = 'View the source code';
            app.Image.ImageSource = fullfile(pathToMLAPP, 'SapFlower.png');

            % Create UITable4
            app.UITable4 = uitable(app.GridLayout16);
            app.UITable4.ColumnName = '';
            app.UITable4.ColumnRearrangeable = 'on';
            app.UITable4.RowName = {};
            app.UITable4.ColumnSortable = true;
            app.UITable4.ColumnEditable = true;
            app.UITable4.Layout.Row = 7;
            app.UITable4.Layout.Column = [1 12];

            % Create ProjectFilePathEditField
            app.ProjectFilePathEditField = uieditfield(app.GridLayout16, 'text');
            app.ProjectFilePathEditField.Layout.Row = 2;
            app.ProjectFilePathEditField.Layout.Column = [2 9];

            % Create ProjectNameEditField
            app.ProjectNameEditField = uieditfield(app.GridLayout16, 'text');
            app.ProjectNameEditField.Layout.Row = 3;
            app.ProjectNameEditField.Layout.Column = [2 4];

            % Create TimeStepIncrementsminEditField
            app.TimeStepIncrementsminEditField = uieditfield(app.GridLayout16, 'numeric');
            app.TimeStepIncrementsminEditField.Layout.Row = 4;
            app.TimeStepIncrementsminEditField.Layout.Column = 2;
            app.TimeStepIncrementsminEditField.Value = 30;

            % Create MaxChangePerIntervalEditField
            app.MaxChangePerIntervalEditField = uieditfield(app.GridLayout16, 'numeric');
            app.MaxChangePerIntervalEditField.Layout.Row = 5;
            app.MaxChangePerIntervalEditField.Layout.Column = 2;
            app.MaxChangePerIntervalEditField.Value = 1.5;

            % Create DeleteDataPointsLessThanEditField
            app.DeleteDataPointsLessThanEditField = uieditfield(app.GridLayout16, 'numeric');
            app.DeleteDataPointsLessThanEditField.Layout.Row = 6;
            app.DeleteDataPointsLessThanEditField.Layout.Column = 2;
            app.DeleteDataPointsLessThanEditField.Value = 6;

            % Create VPDThresholdEditField
            app.VPDThresholdEditField = uieditfield(app.GridLayout16, 'numeric');
            app.VPDThresholdEditField.Layout.Row = 6;
            app.VPDThresholdEditField.Layout.Column = 5;
            app.VPDThresholdEditField.Value = 2;

            % Create PARThresholdEditField
            app.PARThresholdEditField = uieditfield(app.GridLayout16, 'numeric');
            app.PARThresholdEditField.Layout.Row = 5;
            app.PARThresholdEditField.Layout.Column = 5;
            app.PARThresholdEditField.Value = 50;

            % Create MinSapFlowEditField
            app.MinSapFlowEditField = uieditfield(app.GridLayout16, 'numeric');
            app.MinSapFlowEditField.Layout.Row = 4;
            app.MinSapFlowEditField.Layout.Column = 5;

            % Create ReservedEditField
            app.ReservedEditField = uieditfield(app.GridLayout16, 'numeric');
            app.ReservedEditField.AllowEmpty = 'on';
            app.ReservedEditField.Editable = 'off';
            app.ReservedEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ReservedEditField.Enable = 'off';
            app.ReservedEditField.Placeholder = 'N/A';
            app.ReservedEditField.Layout.Row = 6;
            app.ReservedEditField.Layout.Column = 8;
            app.ReservedEditField.Value = [];

            % Create VPDTimehEditField
            app.VPDTimehEditField = uieditfield(app.GridLayout16, 'numeric');
            app.VPDTimehEditField.Layout.Row = 5;
            app.VPDTimehEditField.Layout.Column = 8;
            app.VPDTimehEditField.Value = 24;

            % Create MaxSapFlowEditField
            app.MaxSapFlowEditField = uieditfield(app.GridLayout16, 'numeric');
            app.MaxSapFlowEditField.Layout.Row = 4;
            app.MaxSapFlowEditField.Layout.Column = 8;
            app.MaxSapFlowEditField.Value = 1;

            % Create ProjectPathButton
            app.ProjectPathButton = uibutton(app.GridLayout16, 'push');
            app.ProjectPathButton.ButtonPushedFcn = createCallbackFcn(app, @ProjectPathButtonPushed2, true);
            app.ProjectPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.ProjectPathButton.Layout.Row = 2;
            app.ProjectPathButton.Layout.Column = 10;
            app.ProjectPathButton.Text = 'Project Path';

            % Create CreateProjectButton
            app.CreateProjectButton = uibutton(app.GridLayout16, 'push');
            app.CreateProjectButton.ButtonPushedFcn = createCallbackFcn(app, @CreateProjectButtonPushed2, true);
            app.CreateProjectButton.BackgroundColor = [0.1686 0.5098 0.498];
            app.CreateProjectButton.FontColor = [1 1 1];
            app.CreateProjectButton.Layout.Row = 3;
            app.CreateProjectButton.Layout.Column = 10;
            app.CreateProjectButton.Text = 'Create Project';

            % Create OpenProjectButton
            app.OpenProjectButton = uibutton(app.GridLayout16, 'push');
            app.OpenProjectButton.ButtonPushedFcn = createCallbackFcn(app, @OpenProjectButtonPushed2, true);
            app.OpenProjectButton.BackgroundColor = [0.1608 0.6392 0.6392];
            app.OpenProjectButton.FontColor = [1 1 1];
            app.OpenProjectButton.Layout.Row = 4;
            app.OpenProjectButton.Layout.Column = 10;
            app.OpenProjectButton.Text = 'Open Project';

            % Create SaveProjectButton
            app.SaveProjectButton = uibutton(app.GridLayout16, 'push');
            app.SaveProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveProjectButtonPushed2, true);
            app.SaveProjectButton.BackgroundColor = [0.3176 0.7216 0.6118];
            app.SaveProjectButton.FontColor = [1 1 1];
            app.SaveProjectButton.Layout.Row = 5;
            app.SaveProjectButton.Layout.Column = 10;
            app.SaveProjectButton.Text = 'Save Project';

            % Create DefineProjectFilePathLabel
            app.DefineProjectFilePathLabel = uilabel(app.GridLayout16);
            app.DefineProjectFilePathLabel.FontColor = [0 0 0];
            app.DefineProjectFilePathLabel.Layout.Row = 2;
            app.DefineProjectFilePathLabel.Layout.Column = 1;
            app.DefineProjectFilePathLabel.Text = 'Define Project File Path';

            % Create ProjectNameLabel
            app.ProjectNameLabel = uilabel(app.GridLayout16);
            app.ProjectNameLabel.FontColor = [0 0 0];
            app.ProjectNameLabel.Layout.Row = 3;
            app.ProjectNameLabel.Layout.Column = 1;
            app.ProjectNameLabel.Text = 'Project Name';

            % Create TimeStepIncrementsminLabel
            app.TimeStepIncrementsminLabel = uilabel(app.GridLayout16);
            app.TimeStepIncrementsminLabel.FontColor = [0 0 0];
            app.TimeStepIncrementsminLabel.Layout.Row = 4;
            app.TimeStepIncrementsminLabel.Layout.Column = 1;
            app.TimeStepIncrementsminLabel.Text = 'Time Step Increments (min)';

            % Create MaxChangePerIntervalLabel
            app.MaxChangePerIntervalLabel = uilabel(app.GridLayout16);
            app.MaxChangePerIntervalLabel.FontColor = [0 0 0];
            app.MaxChangePerIntervalLabel.Layout.Row = 5;
            app.MaxChangePerIntervalLabel.Layout.Column = 1;
            app.MaxChangePerIntervalLabel.Text = 'Max Change Per Interval';

            % Create DeleteDataPointsLessThanLabel
            app.DeleteDataPointsLessThanLabel = uilabel(app.GridLayout16);
            app.DeleteDataPointsLessThanLabel.FontColor = [0 0 0];
            app.DeleteDataPointsLessThanLabel.Layout.Row = 6;
            app.DeleteDataPointsLessThanLabel.Layout.Column = 1;
            app.DeleteDataPointsLessThanLabel.Text = 'Delete Data Points Less Than';

            % Create MinSapFlowLabel
            app.MinSapFlowLabel = uilabel(app.GridLayout16);
            app.MinSapFlowLabel.FontColor = [0 0 0];
            app.MinSapFlowLabel.Layout.Row = 4;
            app.MinSapFlowLabel.Layout.Column = 4;
            app.MinSapFlowLabel.Text = 'Min SapFlow';

            % Create PARThresholdLabel
            app.PARThresholdLabel = uilabel(app.GridLayout16);
            app.PARThresholdLabel.FontColor = [0 0 0];
            app.PARThresholdLabel.Layout.Row = 5;
            app.PARThresholdLabel.Layout.Column = 4;
            app.PARThresholdLabel.Text = 'PAR Threshold';

            % Create VPDThresholdLabel
            app.VPDThresholdLabel = uilabel(app.GridLayout16);
            app.VPDThresholdLabel.FontColor = [0 0 0];
            app.VPDThresholdLabel.Layout.Row = 6;
            app.VPDThresholdLabel.Layout.Column = 4;
            app.VPDThresholdLabel.Text = 'VPD Threshold';

            % Create MaxSapFlowLabel
            app.MaxSapFlowLabel = uilabel(app.GridLayout16);
            app.MaxSapFlowLabel.FontColor = [0 0 0];
            app.MaxSapFlowLabel.Layout.Row = 4;
            app.MaxSapFlowLabel.Layout.Column = 7;
            app.MaxSapFlowLabel.Text = 'Max SapFlow';

            % Create VPDTimehLabel
            app.VPDTimehLabel = uilabel(app.GridLayout16);
            app.VPDTimehLabel.FontColor = [0 0 0];
            app.VPDTimehLabel.Layout.Row = 5;
            app.VPDTimehLabel.Layout.Column = 7;
            app.VPDTimehLabel.Text = 'VPD Time (h)';

            % Create ReservedLabel
            app.ReservedLabel = uilabel(app.GridLayout16);
            app.ReservedLabel.FontColor = [0 0 0];
            app.ReservedLabel.Layout.Row = 6;
            app.ReservedLabel.Layout.Column = 7;
            app.ReservedLabel.Text = 'Reserved';

            % Create SaveAsProjectButton
            app.SaveAsProjectButton = uibutton(app.GridLayout16, 'push');
            app.SaveAsProjectButton.ButtonPushedFcn = createCallbackFcn(app, @SaveAsProjectButtonPushed, true);
            app.SaveAsProjectButton.BackgroundColor = [0.251 0.6784 0.5647];
            app.SaveAsProjectButton.FontColor = [1 1 1];
            app.SaveAsProjectButton.Layout.Row = 6;
            app.SaveAsProjectButton.Layout.Column = 10;
            app.SaveAsProjectButton.Text = 'Save As Project';

            % Create DefineDataFilePathLabel
            app.DefineDataFilePathLabel = uilabel(app.GridLayout16);
            app.DefineDataFilePathLabel.FontColor = [0 0 0];
            app.DefineDataFilePathLabel.Layout.Row = 1;
            app.DefineDataFilePathLabel.Layout.Column = 1;
            app.DefineDataFilePathLabel.Text = 'Define Data File Path';

            % Create DataFilePathEditField
            app.DataFilePathEditField = uieditfield(app.GridLayout16, 'text');
            app.DataFilePathEditField.Layout.Row = 1;
            app.DataFilePathEditField.Layout.Column = [2 9];

            % Create DataPathButton
            app.DataPathButton = uibutton(app.GridLayout16, 'push');
            app.DataPathButton.ButtonPushedFcn = createCallbackFcn(app, @DataPathButtonPushed2, true);
            app.DataPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.DataPathButton.Layout.Row = 1;
            app.DataPathButton.Layout.Column = 10;
            app.DataPathButton.Text = 'Data Path';

            % Create OutputTextArea
            app.OutputTextArea = uitextarea(app.GridLayout16);
            app.OutputTextArea.Layout.Row = 8;
            app.OutputTextArea.Layout.Column = [1 12];

            % Create DataPreprocessingTab
            app.DataPreprocessingTab = uitab(app.TabGroup);
            app.DataPreprocessingTab.Title = 'Data Preprocessing';
            app.DataPreprocessingTab.BackgroundColor = [0.902 0.902 0.902];
            app.DataPreprocessingTab.Scrollable = 'on';

            % Create GridLayout13
            app.GridLayout13 = uigridlayout(app.DataPreprocessingTab);
            app.GridLayout13.ColumnWidth = {39, 50, 41, 41, 32, 49, 36, 37, 35, '2.39x', 27, '2.39x', '1x', 93, '1.42x', 90, '1.61x', 96, '1.39x', 74, '1.31x'};
            app.GridLayout13.RowHeight = {22, '1.6x', '1x', 22, 22};
            app.GridLayout13.ColumnSpacing = 1.5454531582919;
            app.GridLayout13.RowSpacing = 3.5;
            app.GridLayout13.Padding = [1.5454531582919 3.5 1.5454531582919 3.5];

            % Create UIAxes5
            app.UIAxes5 = uiaxes(app.GridLayout13);
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
            app.UIAxes5.Layout.Column = [9 21];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.GridLayout13);
            xlabel(app.UIAxes4, 'Time')
            ylabel(app.UIAxes4, 'dV (mV)')
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
            app.UIAxes4.Layout.Column = [1 21];
            app.UIAxes4.PickableParts = 'all';

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.GridLayout13);
            xlabel(app.UIAxes3, 'Time')
            ylabel(app.UIAxes3, 'dV Overview')
            zlabel(app.UIAxes3, 'Z')
            app.UIAxes3.TickLength = [0.006 0.025];
            app.UIAxes3.GridLineWidth = 0.25;
            app.UIAxes3.MinorGridLineWidth = 0.25;
            app.UIAxes3.GridLineStyle = '-.';
            app.UIAxes3.XColor = [0 0 0];
            app.UIAxes3.YColor = [0 0 0];
            app.UIAxes3.ZColor = [0 0 0];
            app.UIAxes3.LineWidth = 0.25;
            app.UIAxes3.Box = 'on';
            app.UIAxes3.XGrid = 'on';
            app.UIAxes3.YGrid = 'on';
            app.UIAxes3.Layout.Row = 3;
            app.UIAxes3.Layout.Column = [1 8];

            % Create DeletedTdataButton
            app.DeletedTdataButton = uibutton(app.GridLayout13, 'push');
            app.DeletedTdataButton.ButtonPushedFcn = createCallbackFcn(app, @DeletedTdataButtonPushed2, true);
            app.DeletedTdataButton.BackgroundColor = [0.8 0.5059 0.4];
            app.DeletedTdataButton.FontColor = [1 1 1];
            app.DeletedTdataButton.Layout.Row = 4;
            app.DeletedTdataButton.Layout.Column = [2 3];
            app.DeletedTdataButton.Text = 'Delete dT data';

            % Create UndoDeletionButton
            app.UndoDeletionButton = uibutton(app.GridLayout13, 'push');
            app.UndoDeletionButton.ButtonPushedFcn = createCallbackFcn(app, @UndoDeletionButtonPushed2, true);
            app.UndoDeletionButton.BackgroundColor = [1 1 1];
            app.UndoDeletionButton.Layout.Row = 5;
            app.UndoDeletionButton.Layout.Column = [2 3];
            app.UndoDeletionButton.Text = 'Undo Deletion ';

            % Create FinishEditingButton
            app.FinishEditingButton = uibutton(app.GridLayout13, 'push');
            app.FinishEditingButton.ButtonPushedFcn = createCallbackFcn(app, @FinishEditingButtonPushed2, true);
            app.FinishEditingButton.BackgroundColor = [0.8902 0.5922 0.1412];
            app.FinishEditingButton.FontColor = [0.9412 0.9412 0.9412];
            app.FinishEditingButton.Layout.Row = 1;
            app.FinishEditingButton.Layout.Column = [2 3];
            app.FinishEditingButton.Text = 'Finish Editing';

            % Create PreviousSensorButton
            app.PreviousSensorButton = uibutton(app.GridLayout13, 'push');
            app.PreviousSensorButton.ButtonPushedFcn = createCallbackFcn(app, @PreviousSensorButtonPushed2, true);
            app.PreviousSensorButton.BackgroundColor = [0.2392 0.5608 0.2941];
            app.PreviousSensorButton.FontColor = [1 1 1];
            app.PreviousSensorButton.Layout.Row = 1;
            app.PreviousSensorButton.Layout.Column = 18;
            app.PreviousSensorButton.Text = 'Previous Sensor';

            % Create NextSensorButton
            app.NextSensorButton = uibutton(app.GridLayout13, 'push');
            app.NextSensorButton.ButtonPushedFcn = createCallbackFcn(app, @NextSensorButtonPushed2, true);
            app.NextSensorButton.BackgroundColor = [0.2039 0.4471 0.4588];
            app.NextSensorButton.FontColor = [1 1 1];
            app.NextSensorButton.Layout.Row = 1;
            app.NextSensorButton.Layout.Column = 20;
            app.NextSensorButton.Text = 'Next Sensor';

            % Create TextArea2
            app.TextArea2 = uitextarea(app.GridLayout13);
            app.TextArea2.Layout.Row = [4 5];
            app.TextArea2.Layout.Column = [10 21];

            % Create PlotDataButton
            app.PlotDataButton = uibutton(app.GridLayout13, 'push');
            app.PlotDataButton.ButtonPushedFcn = createCallbackFcn(app, @PlotDataButtonPushed2, true);
            app.PlotDataButton.BackgroundColor = [0.3608 0.6118 0.2392];
            app.PlotDataButton.FontColor = [1 1 1];
            app.PlotDataButton.Layout.Row = 1;
            app.PlotDataButton.Layout.Column = 16;
            app.PlotDataButton.Text = 'Plot Data';

            % Create ReverseDataButton
            app.ReverseDataButton = uibutton(app.GridLayout13, 'push');
            app.ReverseDataButton.ButtonPushedFcn = createCallbackFcn(app, @ReverseDataButtonPushed2, true);
            app.ReverseDataButton.BackgroundColor = [0.6353 0.6588 0.4431];
            app.ReverseDataButton.FontColor = [1 1 1];
            app.ReverseDataButton.Layout.Row = 4;
            app.ReverseDataButton.Layout.Column = [5 6];
            app.ReverseDataButton.Text = 'ReverseData';

            % Create UndoReverseButton
            app.UndoReverseButton = uibutton(app.GridLayout13, 'push');
            app.UndoReverseButton.ButtonPushedFcn = createCallbackFcn(app, @UndoReverseButtonPushed, true);
            app.UndoReverseButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.UndoReverseButton.FontColor = [1 1 1];
            app.UndoReverseButton.Layout.Row = 5;
            app.UndoReverseButton.Layout.Column = [5 6];
            app.UndoReverseButton.Text = 'UndoReverse';

            % Create SaveDataButton
            app.SaveDataButton = uibutton(app.GridLayout13, 'push');
            app.SaveDataButton.ButtonPushedFcn = createCallbackFcn(app, @SaveDataButtonPushed2, true);
            app.SaveDataButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.SaveDataButton.FontColor = [1 1 1];
            app.SaveDataButton.Layout.Row = 1;
            app.SaveDataButton.Layout.Column = [6 7];
            app.SaveDataButton.Text = 'Save Data';

            % Create XDropDownLabel
            app.XDropDownLabel = uilabel(app.GridLayout13);
            app.XDropDownLabel.HorizontalAlignment = 'center';
            app.XDropDownLabel.Layout.Row = 1;
            app.XDropDownLabel.Layout.Column = 9;
            app.XDropDownLabel.Text = 'X';

            % Create XDropDown
            app.XDropDown = uidropdown(app.GridLayout13);
            app.XDropDown.Items = {};
            app.XDropDown.Layout.Row = 1;
            app.XDropDown.Layout.Column = 10;
            app.XDropDown.Value = {};

            % Create YDropDownLabel
            app.YDropDownLabel = uilabel(app.GridLayout13);
            app.YDropDownLabel.HorizontalAlignment = 'center';
            app.YDropDownLabel.Layout.Row = 1;
            app.YDropDownLabel.Layout.Column = 11;
            app.YDropDownLabel.Text = 'Y';

            % Create YDropDown
            app.YDropDown = uidropdown(app.GridLayout13);
            app.YDropDown.Items = {};
            app.YDropDown.Layout.Row = 1;
            app.YDropDown.Layout.Column = 12;
            app.YDropDown.Value = {};

            % Create autoClean
            app.autoClean = uibutton(app.GridLayout13, 'push');
            app.autoClean.ButtonPushedFcn = createCallbackFcn(app, @autoCleanButtonPushed, true);
            app.autoClean.BackgroundColor = [0.8 0.8 0.8];
            app.autoClean.FontColor = [0.9412 0.9412 0.9412];
            app.autoClean.Layout.Row = 1;
            app.autoClean.Layout.Column = 14;
            app.autoClean.Text = 'Auto Clean';

            % Create ModelTrainingTab
            app.ModelTrainingTab = uitab(app.TabGroup);
            app.ModelTrainingTab.Title = 'Model Training';
            app.ModelTrainingTab.BackgroundColor = [0.9412 0.9412 0.9412];

            % Create GridLayout14
            app.GridLayout14 = uigridlayout(app.ModelTrainingTab);
            app.GridLayout14.ColumnWidth = {153, '3.06x', '1.44x', 156, '2.06x', '1x', 160, '2.42x', '1.14x', 151, '1.75x', 105};
            app.GridLayout14.RowHeight = {30, 22, 22, 22, 22, 23, 23, 22, 23, 26, 23, 24, 24, 23, 46, '1x'};
            app.GridLayout14.ColumnSpacing = 0;
            app.GridLayout14.RowSpacing = 4.2352923224954;
            app.GridLayout14.Padding = [0 4.2352923224954 0 4.2352923224954];

            % Create Output
            app.Output = uieditfield(app.GridLayout14, 'text');
            app.Output.Layout.Row = 1;
            app.Output.Layout.Column = [1 11];
            app.Output.Value = 'Please define an output path for trained models, cleaned and predicted data.';

            % Create OutputPathButton
            app.OutputPathButton = uibutton(app.GridLayout14, 'push');
            app.OutputPathButton.ButtonPushedFcn = createCallbackFcn(app, @OutputPathButtonPushed2, true);
            app.OutputPathButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.OutputPathButton.Layout.Row = 1;
            app.OutputPathButton.Layout.Column = 12;
            app.OutputPathButton.Text = 'Output Path';

            % Create StartTrainingButton
            app.StartTrainingButton = uibutton(app.GridLayout14, 'push');
            app.StartTrainingButton.ButtonPushedFcn = createCallbackFcn(app, @StartTrainingButtonPushed2, true);
            app.StartTrainingButton.BackgroundColor = [0.4667 0.6745 0.1882];
            app.StartTrainingButton.FontColor = [1 1 1];
            app.StartTrainingButton.Layout.Row = 3;
            app.StartTrainingButton.Layout.Column = 12;
            app.StartTrainingButton.Text = 'Start Training';

            % Create Tree_3
            app.Tree_3 = uitree(app.GridLayout14, 'checkbox');
            app.Tree_3.Layout.Row = [3 7];
            app.Tree_3.Layout.Column = [4 5];

            % Create LinearNode
            app.LinearNode = uitreenode(app.Tree_3);
            app.LinearNode.Text = 'Linear';

            % Create SimpleLinearModelNode
            app.SimpleLinearModelNode = uitreenode(app.LinearNode);
            app.SimpleLinearModelNode.Text = 'Simple Linear Model';

            % Create MultipleLinearModelNode
            app.MultipleLinearModelNode = uitreenode(app.LinearNode);
            app.MultipleLinearModelNode.Text = 'Multiple Linear Model';

            % Create TimeSeriesNode
            app.TimeSeriesNode = uitreenode(app.Tree_3);
            app.TimeSeriesNode.Text = 'TimeSeries';

            % Create ARXNode
            app.ARXNode = uitreenode(app.TimeSeriesNode);
            app.ARXNode.Text = 'ARX';

            % Create ARMAXNode
            app.ARMAXNode = uitreenode(app.TimeSeriesNode);
            app.ARMAXNode.Text = 'ARMAX';

            % Create RecurrentNeuralNetworksNode
            app.RecurrentNeuralNetworksNode = uitreenode(app.Tree_3);
            app.RecurrentNeuralNetworksNode.Text = 'Recurrent Neural Networks';

            % Create GRUNode
            app.GRUNode = uitreenode(app.RecurrentNeuralNetworksNode);
            app.GRUNode.Text = 'GRU';

            % Create LSTMNode
            app.LSTMNode = uitreenode(app.RecurrentNeuralNetworksNode);
            app.LSTMNode.Text = 'LSTM';

            % Create BiLSTMNode
            app.BiLSTMNode = uitreenode(app.RecurrentNeuralNetworksNode);
            app.BiLSTMNode.Text = 'BiLSTM';

            % Create RandomForestNode
            app.RandomForestNode = uitreenode(app.Tree_3);
            app.RandomForestNode.Text = 'Random Forest';

            % Assign Checked Nodes
            app.Tree_3.CheckedNodes = [app.BiLSTMNode];

            % Create EnvironmentalVariablesTree
            app.EnvironmentalVariablesTree = uitree(app.GridLayout14, 'checkbox');
            app.EnvironmentalVariablesTree.Layout.Row = [3 7];
            app.EnvironmentalVariablesTree.Layout.Column = [7 8];

            % Create PredictingVariablesNode
            app.PredictingVariablesNode = uitreenode(app.EnvironmentalVariablesTree);
            app.PredictingVariablesNode.Text = 'Predicting Variable(s)';

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
            app.ResponseVariablesNode = uitreenode(app.EnvironmentalVariablesTree);
            app.ResponseVariablesNode.Text = 'Response Variable(s)';

            % Create dTNode
            app.dTNode = uitreenode(app.ResponseVariablesNode);
            app.dTNode.Text = 'dT';

            % Create FNode
            app.FNode = uitreenode(app.ResponseVariablesNode);
            app.FNode.Text = 'F';

            % Create KNode
            app.KNode = uitreenode(app.ResponseVariablesNode);
            app.KNode.Text = 'K';

            % Assign Checked Nodes
            app.EnvironmentalVariablesTree.CheckedNodes = [app.TimeHoursandminutesNode, app.VPDNode, app.PARNode, app.ResponseVariablesNode];

            % Create ModelSelectionLabel
            app.ModelSelectionLabel = uilabel(app.GridLayout14);
            app.ModelSelectionLabel.Layout.Row = 2;
            app.ModelSelectionLabel.Layout.Column = 4;
            app.ModelSelectionLabel.Text = 'Model Selection';

            % Create VariableSelectionLabel
            app.VariableSelectionLabel = uilabel(app.GridLayout14);
            app.VariableSelectionLabel.Layout.Row = 2;
            app.VariableSelectionLabel.Layout.Column = 7;
            app.VariableSelectionLabel.Text = 'Variable Selection';

            % Create ListBox
            app.ListBox = uilistbox(app.GridLayout14);
            app.ListBox.Items = {'adam', 'sgdm', 'rmsprop'};
            app.ListBox.Layout.Row = 15;
            app.ListBox.Layout.Column = 2;
            app.ListBox.Value = 'adam';

            % Create SolverForNeuralNetworkLabel
            app.SolverForNeuralNetworkLabel = uilabel(app.GridLayout14);
            app.SolverForNeuralNetworkLabel.Layout.Row = 15;
            app.SolverForNeuralNetworkLabel.Layout.Column = 1;
            app.SolverForNeuralNetworkLabel.Text = 'SolverForNeuralNetwork';

            % Create SensorstobetrainedLabel
            app.SensorstobetrainedLabel = uilabel(app.GridLayout14);
            app.SensorstobetrainedLabel.Layout.Row = 2;
            app.SensorstobetrainedLabel.Layout.Column = 10;
            app.SensorstobetrainedLabel.Text = 'Sensor (s) to be trained';

            % Create SensorsTree
            app.SensorsTree = uitree(app.GridLayout14, 'checkbox');
            app.SensorsTree.Layout.Row = [3 7];
            app.SensorsTree.Layout.Column = 10;

            % Create SensorsNode
            app.SensorsNode = uitreenode(app.SensorsTree);
            app.SensorsNode.Text = 'Sensors';

            % Create Tree_5
            app.Tree_5 = uitree(app.GridLayout14);
            app.Tree_5.Layout.Row = [9 15];
            app.Tree_5.Layout.Column = [4 5];

            % Create ModelsNode
            app.ModelsNode = uitreenode(app.Tree_5);
            app.ModelsNode.Text = 'Models';

            % Create AvailableTrainedModelsLabel
            app.AvailableTrainedModelsLabel = uilabel(app.GridLayout14);
            app.AvailableTrainedModelsLabel.Layout.Row = 8;
            app.AvailableTrainedModelsLabel.Layout.Column = 4;
            app.AvailableTrainedModelsLabel.Text = 'Available Trained Model(s)';

            % Create TextArea
            app.TextArea = uitextarea(app.GridLayout14);
            app.TextArea.FontColor = [1 1 1];
            app.TextArea.BackgroundColor = [0.1294 0.1294 0.1294];
            app.TextArea.Layout.Row = 16;
            app.TextArea.Layout.Column = [1 12];

            % Create StartPredictingButton
            app.StartPredictingButton = uibutton(app.GridLayout14, 'push');
            app.StartPredictingButton.ButtonPushedFcn = createCallbackFcn(app, @StartPredictingButtonPushed, true);
            app.StartPredictingButton.BackgroundColor = [0.1882 0.6706 0.5255];
            app.StartPredictingButton.FontColor = [1 1 1];
            app.StartPredictingButton.Layout.Row = 4;
            app.StartPredictingButton.Layout.Column = 12;
            app.StartPredictingButton.Text = 'Start Predicting';

            % Create EpochForTrainingEditFieldLabel
            app.EpochForTrainingEditFieldLabel = uilabel(app.GridLayout14);
            app.EpochForTrainingEditFieldLabel.Layout.Row = 10;
            app.EpochForTrainingEditFieldLabel.Layout.Column = 1;
            app.EpochForTrainingEditFieldLabel.Text = 'EpochForTraining';

            % Create EpochForTrainingEditField
            app.EpochForTrainingEditField = uieditfield(app.GridLayout14, 'numeric');
            app.EpochForTrainingEditField.Limits = [1 99999];
            app.EpochForTrainingEditField.Layout.Row = 10;
            app.EpochForTrainingEditField.Layout.Column = 2;
            app.EpochForTrainingEditField.Value = 200;

            % Create GradientThresholdEditFieldLabel
            app.GradientThresholdEditFieldLabel = uilabel(app.GridLayout14);
            app.GradientThresholdEditFieldLabel.Layout.Row = 11;
            app.GradientThresholdEditFieldLabel.Layout.Column = 1;
            app.GradientThresholdEditFieldLabel.Text = 'GradientThreshold';

            % Create GradientThresholdEditField
            app.GradientThresholdEditField = uieditfield(app.GridLayout14, 'numeric');
            app.GradientThresholdEditField.Limits = [0 Inf];
            app.GradientThresholdEditField.ValueDisplayFormat = '%.3f';
            app.GradientThresholdEditField.Layout.Row = 11;
            app.GradientThresholdEditField.Layout.Column = 2;
            app.GradientThresholdEditField.Value = 1;

            % Create ValidationFrequencyEditFieldLabel
            app.ValidationFrequencyEditFieldLabel = uilabel(app.GridLayout14);
            app.ValidationFrequencyEditFieldLabel.Layout.Row = 13;
            app.ValidationFrequencyEditFieldLabel.Layout.Column = 1;
            app.ValidationFrequencyEditFieldLabel.Text = 'ValidationFrequency';

            % Create ValidationFrequencyEditField
            app.ValidationFrequencyEditField = uieditfield(app.GridLayout14, 'numeric');
            app.ValidationFrequencyEditField.Limits = [1 Inf];
            app.ValidationFrequencyEditField.Layout.Row = 13;
            app.ValidationFrequencyEditField.Layout.Column = 2;
            app.ValidationFrequencyEditField.Value = 3;

            % Create InitialLearningRateEditFieldLabel
            app.InitialLearningRateEditFieldLabel = uilabel(app.GridLayout14);
            app.InitialLearningRateEditFieldLabel.Layout.Row = 12;
            app.InitialLearningRateEditFieldLabel.Layout.Column = 1;
            app.InitialLearningRateEditFieldLabel.Text = 'InitialLearningRate';

            % Create InitialLearningRateEditField
            app.InitialLearningRateEditField = uieditfield(app.GridLayout14, 'numeric');
            app.InitialLearningRateEditField.Limits = [0 Inf];
            app.InitialLearningRateEditField.ValueDisplayFormat = '%.3f';
            app.InitialLearningRateEditField.Layout.Row = 12;
            app.InitialLearningRateEditField.Layout.Column = 2;
            app.InitialLearningRateEditField.Value = 0.001;

            % Create EffectiveStartDateDatePickerLabel
            app.EffectiveStartDateDatePickerLabel = uilabel(app.GridLayout14);
            app.EffectiveStartDateDatePickerLabel.FontColor = [0.0667 0.7412 0.5255];
            app.EffectiveStartDateDatePickerLabel.Layout.Row = 6;
            app.EffectiveStartDateDatePickerLabel.Layout.Column = 1;
            app.EffectiveStartDateDatePickerLabel.Text = 'EffectiveStartDate';

            % Create EffectiveStartDateDatePicker
            app.EffectiveStartDateDatePicker = uidatepicker(app.GridLayout14);
            app.EffectiveStartDateDatePicker.FontColor = [0.0667 0.7412 0.5255];
            app.EffectiveStartDateDatePicker.Layout.Row = 6;
            app.EffectiveStartDateDatePicker.Layout.Column = 2;

            % Create EffectiveEndDateDatePickerLabel
            app.EffectiveEndDateDatePickerLabel = uilabel(app.GridLayout14);
            app.EffectiveEndDateDatePickerLabel.FontColor = [0.6353 0.0784 0.1843];
            app.EffectiveEndDateDatePickerLabel.Layout.Row = 7;
            app.EffectiveEndDateDatePickerLabel.Layout.Column = 1;
            app.EffectiveEndDateDatePickerLabel.Text = 'EffectiveEndDate';

            % Create EffectiveEndDateDatePicker
            app.EffectiveEndDateDatePicker = uidatepicker(app.GridLayout14);
            app.EffectiveEndDateDatePicker.FontColor = [0.6353 0.0784 0.1843];
            app.EffectiveEndDateDatePicker.Layout.Row = 7;
            app.EffectiveEndDateDatePicker.Layout.Column = 2;

            % Create WindowSizepointsEditFieldLabel
            app.WindowSizepointsEditFieldLabel = uilabel(app.GridLayout14);
            app.WindowSizepointsEditFieldLabel.Layout.Row = 2;
            app.WindowSizepointsEditFieldLabel.Layout.Column = 1;
            app.WindowSizepointsEditFieldLabel.Text = 'WindowSize (points)';

            % Create WindowSizepointsEditField
            app.WindowSizepointsEditField = uieditfield(app.GridLayout14, 'numeric');
            app.WindowSizepointsEditField.Limits = [1 99999];
            app.WindowSizepointsEditField.Layout.Row = 2;
            app.WindowSizepointsEditField.Layout.Column = 2;
            app.WindowSizepointsEditField.Value = 72;

            % Create IQRThresholdMultiplierEditFieldLabel
            app.IQRThresholdMultiplierEditFieldLabel = uilabel(app.GridLayout14);
            app.IQRThresholdMultiplierEditFieldLabel.Layout.Row = 3;
            app.IQRThresholdMultiplierEditFieldLabel.Layout.Column = 1;
            app.IQRThresholdMultiplierEditFieldLabel.Text = 'IQRThresholdMultiplier';

            % Create IQRThresholdMultiplierEditField
            app.IQRThresholdMultiplierEditField = uieditfield(app.GridLayout14, 'numeric');
            app.IQRThresholdMultiplierEditField.Limits = [1 99999];
            app.IQRThresholdMultiplierEditField.ValueDisplayFormat = '%.2f';
            app.IQRThresholdMultiplierEditField.Layout.Row = 3;
            app.IQRThresholdMultiplierEditField.Layout.Column = 2;
            app.IQRThresholdMultiplierEditField.Value = 1.5;

            % Create HighVariationThresholdEditFieldLabel
            app.HighVariationThresholdEditFieldLabel = uilabel(app.GridLayout14);
            app.HighVariationThresholdEditFieldLabel.Layout.Row = 4;
            app.HighVariationThresholdEditFieldLabel.Layout.Column = 1;
            app.HighVariationThresholdEditFieldLabel.Text = 'HighVariationThreshold';

            % Create HighVariationThresholdEditField
            app.HighVariationThresholdEditField = uieditfield(app.GridLayout14, 'numeric');
            app.HighVariationThresholdEditField.Limits = [0 99999];
            app.HighVariationThresholdEditField.ValueDisplayFormat = '%.4f';
            app.HighVariationThresholdEditField.Layout.Row = 4;
            app.HighVariationThresholdEditField.Layout.Column = 2;
            app.HighVariationThresholdEditField.Value = 0.1;

            % Create LowVariationThresholdEditFieldLabel
            app.LowVariationThresholdEditFieldLabel = uilabel(app.GridLayout14);
            app.LowVariationThresholdEditFieldLabel.Layout.Row = 5;
            app.LowVariationThresholdEditFieldLabel.Layout.Column = 1;
            app.LowVariationThresholdEditFieldLabel.Text = 'LowVariationThreshold';

            % Create LowVariationThresholdEditField
            app.LowVariationThresholdEditField = uieditfield(app.GridLayout14, 'numeric');
            app.LowVariationThresholdEditField.Limits = [0 99999];
            app.LowVariationThresholdEditField.ValueDisplayFormat = '%.4f';
            app.LowVariationThresholdEditField.Layout.Row = 5;
            app.LowVariationThresholdEditField.Layout.Column = 2;
            app.LowVariationThresholdEditField.Value = 0.01;

            % Create NumberOfHiddenUnitsEditFieldLabel
            app.NumberOfHiddenUnitsEditFieldLabel = uilabel(app.GridLayout14);
            app.NumberOfHiddenUnitsEditFieldLabel.Layout.Row = 14;
            app.NumberOfHiddenUnitsEditFieldLabel.Layout.Column = 1;
            app.NumberOfHiddenUnitsEditFieldLabel.Text = 'NumberOfHiddenUnits';

            % Create NumberOfHiddenUnitsEditField
            app.NumberOfHiddenUnitsEditField = uieditfield(app.GridLayout14, 'numeric');
            app.NumberOfHiddenUnitsEditField.Limits = [1 Inf];
            app.NumberOfHiddenUnitsEditField.Layout.Row = 14;
            app.NumberOfHiddenUnitsEditField.Layout.Column = 2;
            app.NumberOfHiddenUnitsEditField.Value = 15;

            % Create SplitForValidationLabel
            app.SplitForValidationLabel = uilabel(app.GridLayout14);
            app.SplitForValidationLabel.Layout.Row = 9;
            app.SplitForValidationLabel.Layout.Column = 1;
            app.SplitForValidationLabel.Text = 'SplitForValidation (%)';

            % Create SplitForValidationEditField
            app.SplitForValidationEditField = uieditfield(app.GridLayout14, 'numeric');
            app.SplitForValidationEditField.Limits = [0 100];
            app.SplitForValidationEditField.Layout.Row = 9;
            app.SplitForValidationEditField.Layout.Column = 2;
            app.SplitForValidationEditField.Value = 25;

            % Create ScaleDataCheckBox
            app.ScaleDataCheckBox = uicheckbox(app.GridLayout14);
            app.ScaleDataCheckBox.Text = 'Feature scaling for model training';
            app.ScaleDataCheckBox.FontColor = [0.0471 0.5686 0.502];
            app.ScaleDataCheckBox.Layout.Row = 9;
            app.ScaleDataCheckBox.Layout.Column = [7 8];
            app.ScaleDataCheckBox.Value = true;

            % Create GapFillingTab
            app.GapFillingTab = uitab(app.TabGroup);
            app.GapFillingTab.Title = 'Gap Filling';
            app.GapFillingTab.BackgroundColor = [0.902 0.902 0.902];
            app.GapFillingTab.Scrollable = 'on';

            % Create GridLayout17
            app.GridLayout17 = uigridlayout(app.GapFillingTab);
            app.GridLayout17.ColumnWidth = {58, '1.22x', 132, '1x', 109};
            app.GridLayout17.RowHeight = {22, 23, 21, 22, 22, 23, 19, '1.51x', 22, '6.76x', '1x'};
            app.GridLayout17.ColumnSpacing = 0.166666666666666;
            app.GridLayout17.RowSpacing = 4.58333333333333;
            app.GridLayout17.Padding = [0.166666666666666 4.58333333333333 0.166666666666666 4.58333333333333];
            app.GridLayout17.BackgroundColor = [0.94 0.94 0.94];

            % Create GapFillButton
            app.GapFillButton = uibutton(app.GridLayout17, 'push');
            app.GapFillButton.ButtonPushedFcn = createCallbackFcn(app, @GapFillButtonPushed2, true);
            app.GapFillButton.BackgroundColor = [0.2196 0.6314 0.5059];
            app.GapFillButton.FontColor = [1 1 1];
            app.GapFillButton.Layout.Row = 3;
            app.GapFillButton.Layout.Column = 5;
            app.GapFillButton.Text = 'GapFill';

            % Create PredictedDataButton
            app.PredictedDataButton = uibutton(app.GridLayout17, 'push');
            app.PredictedDataButton.ButtonPushedFcn = createCallbackFcn(app, @PredictedDataButtonPushed2, true);
            app.PredictedDataButton.BackgroundColor = [0.2314 0.7216 0.6627];
            app.PredictedDataButton.FontColor = [1 1 1];
            app.PredictedDataButton.Layout.Row = 2;
            app.PredictedDataButton.Layout.Column = 5;
            app.PredictedDataButton.Text = 'PredictedData';

            % Create RawDataButton
            app.RawDataButton = uibutton(app.GridLayout17, 'push');
            app.RawDataButton.ButtonPushedFcn = createCallbackFcn(app, @RawDataButtonPushed2, true);
            app.RawDataButton.BackgroundColor = [0.302 0.7882 0.702];
            app.RawDataButton.FontColor = [1 1 1];
            app.RawDataButton.Layout.Row = 1;
            app.RawDataButton.Layout.Column = 5;
            app.RawDataButton.Text = 'RawData';

            % Create UITable5
            app.UITable5 = uitable(app.GridLayout17);
            app.UITable5.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable5.ColumnRearrangeable = 'on';
            app.UITable5.RowName = {};
            app.UITable5.Layout.Row = 10;
            app.UITable5.Layout.Column = [1 2];

            % Create UITable5_2
            app.UITable5_2 = uitable(app.GridLayout17);
            app.UITable5_2.ColumnName = {'Column 1'; 'Column 2'; 'Column 3'; 'Column 4'};
            app.UITable5_2.ColumnRearrangeable = 'on';
            app.UITable5_2.RowName = {};
            app.UITable5_2.Layout.Row = 10;
            app.UITable5_2.Layout.Column = [3 4];

            % Create Tree
            app.Tree = uitree(app.GridLayout17, 'checkbox');
            app.Tree.Layout.Row = 10;
            app.Tree.Layout.Column = 5;

            % Create Node
            app.Node = uitreenode(app.Tree);
            app.Node.Text = 'Node';

            % Create Node_2
            app.Node_2 = uitreenode(app.Node);
            app.Node_2.Text = 'Node';

            % Create Node2
            app.Node2 = uitreenode(app.Node);
            app.Node2.Text = 'Node2';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.GridLayout17);
            app.TabGroup2.Layout.Row = [1 8];
            app.TabGroup2.Layout.Column = [1 4];

            % Create ViewRawDataTab
            app.ViewRawDataTab = uitab(app.TabGroup2);
            app.ViewRawDataTab.Title = 'View Raw Data';

            % Create UIAxes6_4
            app.UIAxes6_4 = uiaxes(app.ViewRawDataTab);
            title(app.UIAxes6_4, 'Title')
            xlabel(app.UIAxes6_4, 'X')
            ylabel(app.UIAxes6_4, 'Y')
            zlabel(app.UIAxes6_4, 'Z')
            app.UIAxes6_4.Box = 'on';
            app.UIAxes6_4.Position = [1 9 1070 224];

            % Create ViewPredictedDataTab
            app.ViewPredictedDataTab = uitab(app.TabGroup2);
            app.ViewPredictedDataTab.Title = 'View Predicted Data';

            % Create UIAxes6_2
            app.UIAxes6_2 = uiaxes(app.ViewPredictedDataTab);
            title(app.UIAxes6_2, 'Title')
            xlabel(app.UIAxes6_2, 'X')
            ylabel(app.UIAxes6_2, 'Y')
            zlabel(app.UIAxes6_2, 'Z')
            app.UIAxes6_2.Box = 'on';
            app.UIAxes6_2.Position = [2 9 1069 225];

            % Create ViewGapFilledDataTab
            app.ViewGapFilledDataTab = uitab(app.TabGroup2);
            app.ViewGapFilledDataTab.Title = 'View Gap Filled Data';

            % Create UIAxes6_3
            app.UIAxes6_3 = uiaxes(app.ViewGapFilledDataTab);
            title(app.UIAxes6_3, 'Title')
            xlabel(app.UIAxes6_3, 'X')
            ylabel(app.UIAxes6_3, 'Y')
            zlabel(app.UIAxes6_3, 'Z')
            app.UIAxes6_3.Box = 'on';
            app.UIAxes6_3.Position = [2 8 1069 226];

            % Create ViewKvaluesTab
            app.ViewKvaluesTab = uitab(app.TabGroup2);
            app.ViewKvaluesTab.Title = 'View K values';
            app.ViewKvaluesTab.BackgroundColor = [0.94 0.94 0.94];

            % Create UIAxes6_5
            app.UIAxes6_5 = uiaxes(app.ViewKvaluesTab);
            title(app.UIAxes6_5, 'Title')
            xlabel(app.UIAxes6_5, 'X')
            ylabel(app.UIAxes6_5, 'Y')
            zlabel(app.UIAxes6_5, 'Z')
            app.UIAxes6_5.Box = 'on';
            app.UIAxes6_5.Position = [2 8 1069 226];

            % Create ViewFvaluesTab
            app.ViewFvaluesTab = uitab(app.TabGroup2);
            app.ViewFvaluesTab.Title = 'View F values';
            app.ViewFvaluesTab.BackgroundColor = [0.94 0.94 0.94];

            % Create UIAxes6_6
            app.UIAxes6_6 = uiaxes(app.ViewFvaluesTab);
            title(app.UIAxes6_6, 'Title')
            xlabel(app.UIAxes6_6, 'X')
            ylabel(app.UIAxes6_6, 'Y')
            zlabel(app.UIAxes6_6, 'Z')
            app.UIAxes6_6.Box = 'on';
            app.UIAxes6_6.Position = [2 8 1069 226];

            % Create ViewDailyHourlySapFluxDensityTab
            app.ViewDailyHourlySapFluxDensityTab = uitab(app.TabGroup2);
            app.ViewDailyHourlySapFluxDensityTab.Title = 'View Daily/Hourly Sap Flux Density';
            app.ViewDailyHourlySapFluxDensityTab.BackgroundColor = [0.94 0.94 0.94];

            % Create UIAxes6_7
            app.UIAxes6_7 = uiaxes(app.ViewDailyHourlySapFluxDensityTab);
            title(app.UIAxes6_7, 'Title')
            xlabel(app.UIAxes6_7, 'X')
            ylabel(app.UIAxes6_7, 'Y')
            zlabel(app.UIAxes6_7, 'Z')
            app.UIAxes6_7.Box = 'on';
            app.UIAxes6_7.Position = [2 8 1069 226];

            % Create RawDataLabel
            app.RawDataLabel = uilabel(app.GridLayout17);
            app.RawDataLabel.FontWeight = 'bold';
            app.RawDataLabel.Layout.Row = 9;
            app.RawDataLabel.Layout.Column = 1;
            app.RawDataLabel.Text = 'Raw Data';

            % Create PredictedDataLabel
            app.PredictedDataLabel = uilabel(app.GridLayout17);
            app.PredictedDataLabel.FontWeight = 'bold';
            app.PredictedDataLabel.Layout.Row = 9;
            app.PredictedDataLabel.Layout.Column = 3;
            app.PredictedDataLabel.Text = 'Predicted Data';

            % Create ExportKvaluesButton
            app.ExportKvaluesButton = uibutton(app.GridLayout17, 'push');
            app.ExportKvaluesButton.ButtonPushedFcn = createCallbackFcn(app, @ExportKvaluesButtonPushed2, true);
            app.ExportKvaluesButton.BackgroundColor = [0.0627 0.4314 0.3882];
            app.ExportKvaluesButton.FontColor = [1 1 1];
            app.ExportKvaluesButton.Layout.Row = 4;
            app.ExportKvaluesButton.Layout.Column = 5;
            app.ExportKvaluesButton.Text = 'ExportKvalues';

            % Create ExportFvaluesButton
            app.ExportFvaluesButton = uibutton(app.GridLayout17, 'push');
            app.ExportFvaluesButton.ButtonPushedFcn = createCallbackFcn(app, @ExportFvaluesButtonPushed2, true);
            app.ExportFvaluesButton.BackgroundColor = [0.0314 0.302 0.2667];
            app.ExportFvaluesButton.FontColor = [1 1 1];
            app.ExportFvaluesButton.Layout.Row = 5;
            app.ExportFvaluesButton.Layout.Column = 5;
            app.ExportFvaluesButton.Text = 'ExportFvalues';

            % Create TextArea_2
            app.TextArea_2 = uitextarea(app.GridLayout17);
            app.TextArea_2.Layout.Row = 11;
            app.TextArea_2.Layout.Column = [1 5];

            % Create ExportDailyWaterUse
            app.ExportDailyWaterUse = uibutton(app.GridLayout17, 'push');
            app.ExportDailyWaterUse.ButtonPushedFcn = createCallbackFcn(app, @ExportDailyWaterUseButtonPushed2, true);
            app.ExportDailyWaterUse.BackgroundColor = [0.0471 0.3882 0.4392];
            app.ExportDailyWaterUse.FontColor = [1 1 1];
            app.ExportDailyWaterUse.Layout.Row = 6;
            app.ExportDailyWaterUse.Layout.Column = 5;
            app.ExportDailyWaterUse.Text = 'ExportSapFlux';

            % Create ExportTypeDropDown
            app.ExportTypeDropDown = uidropdown(app.GridLayout17);
            app.ExportTypeDropDown.Items = {'Hourly', 'Daily'};
            app.ExportTypeDropDown.FontColor = [0 0 0];
            app.ExportTypeDropDown.BackgroundColor = [0.96 0.96 0.96];
            app.ExportTypeDropDown.Layout.Row = 7;
            app.ExportTypeDropDown.Layout.Column = 5;
            app.ExportTypeDropDown.Value = 'Hourly';

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

            % Show the figure after all components are created
            app.SapFlowerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = SapFlower

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.SapFlowerUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

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
