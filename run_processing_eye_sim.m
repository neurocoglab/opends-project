%% This is a sample project script to demonstrate the use of the OpenDS 
%  eye tracking and simulation processing pipeline. This script assumes
%  that eye & simulation preprocessing has already been run.
%  
%

clear; clc;

% Adds the pipeline scripts & functions to the Matlab path
addpath( genpath('../opends-matlab') );

params = [];

default_params_general;
default_params_sim;
default_params_eye;

% Clobber?
params.general.clobber = true;

% Specify I/O stuff
params.io.input_dir = '/Volumes/AndrewElements/data/driving';
params.io.output_dir = '/Volumes/AndrewElements/data/driving/processed2';
params.io.results_dir = '/Volumes/AndrewElements/data/driving/results2';
params.general.subjects_file = 'subjects_qc_eye.csv';
params.general.subject_metadata_file = 'subject_data_final.csv';

% Specify acquisition parameters
params.eye.Fs = 500;

% Simulation-specific information
params.sim.lane_dist = 7035.461;

% Run processing script

processing_eye;
