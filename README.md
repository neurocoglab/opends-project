# opends-project

This repository provides a template for setting up and running and [opends-matlab](https://github.com/neurocoglab/opends-matlab) analysis on your dataset. Each script is meant to be run as a standalone, within its own directory. The scripts should be modified in order to point to the opends-matlab library, and specify system-specific parameters, such as:

* The path to the [Fieldtrip](http://www.fieldtriptoolbox.org/) library
* The path to the data directory
* The subdirectories containing sim, eye, and eeg data
* The output directory (for storing derived data in subject folders)
* The results directory (for storing summary data, statistical results, figures, etc.)
* Specific parameters defining the processing and analyses

See [this Google doc](https://tinyurl.com/rlbycqc) for a detailed list of the parameters used by opends-matlab.

