%% This is a sample project script to demonstrate the use of the OpenDS 
%  eye tracking and simulation pre-processing pipeline. This script does 
%  the following:
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
default_params_sim;
default_params_eye;

% Clobber?
params.general.clobber = false;

% Specify I/O stuff
params.io.input_dir = '/Volumes/GDriveUsb/data/driving';
params.io.output_dir = '/Volumes/GDriveUsb/data/driving/processed';
params.general.subjects_file = 'subjects_qc_eye.csv';
%params.general.subjects_file = 'subjects_test_eeg.csv';

% Specify eye tracker as SMI
params.eye.convert.format = 'smi';
params.eye.sub_dir = 'tracking';

% Specify acquisition parameters
params.eye.Fs = 500;

%% Run pre-processing script

preprocessing_eye;
