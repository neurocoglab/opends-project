%% This is a sample project script to demonstrate the use of the OpenDS 
%  EEG pre-processing pipeline. This script does the following:
%  
%     1. Load default parameters
%     2. Changes some of these parameters, e.g., to specify I/O locations
%     3. Runs the pre-processing scripts in order
%

clear; clc;

% Adds the pipeline scripts & functions to the Matlab path
addpath( genpath('../opends-matlab') );

params = [];

default_params_general;
default_params_eeg;

% Clobber?
params.general.clobber = false;

% Specify I/O stuff
params.io.input_dir = '/Volumes/AndrewElements/data/driving';
params.io.output_dir = '/Volumes/AndrewElements/data/driving/processed2';
params.general.subjects_file = 'subjects_eeg.csv';
%params.general.subjects_file = 'subjects_eeg_step2.csv';

% Specify EEG stuff
params.eeg.bad_channel_file = 'bad_channels.csv';

%% Run pre-processing Step 1

preprocessing_1_eeg;

%% Run pre-processing Step 2

preprocessing_2_eeg;

%% Run pre-processing Step 3

preprocessing_3_eeg;


