# Complex-Systems-Blog---MMCOWS

This repository contains 8 portfolios for the Complex Systems course as part of Travis J. Wiltshire's Complex Systems Methods for Cognitive and Data Scientists course at Tilburg University.

## Portfolios

- [Temporal Dynamics of Change](module-2/Module_2.ipynb)
- [Properties of Complex Systems in Sensor Data From MmCows: Dairy Cows Dataset](module-3/module_3.ipynb)

- [Attractor Dynamics in the MMcows Dataset](module-4/Module4.ipynb)
- [Surrogate Testing on MMCows Cow Movement Data](module-5/Module%205.ipynb)
- [Surrogate Testing on MMCows Cow Movement Data — Determinism Analysis](module-7/module_7.ipynb)
- [Measuring Feeding Coordination of Dairy Cows Using a Complex Systems Approach](module-8/portfolio-module-8.ipynb)
- [Time-Varying Interaction Strengths in Dairy Cow Thermoregulation](module-10/module_10.ipynb)
- [Signal Complexity in Dairy Cow Behavior Through Sample Entropy Analysis](module-12/portfolio-module-12.ipynb)

## Setup

Each portfolio is contained in its own notebook file. In order to run a notebook, you need to download and import the [mmcows](https://github.com/neis-lab/mmcows) data set into the cloned repository, which can be done with the help of the 'download_and_extract_data' notebook.

The notebooks can be viewed by opening the 'index.html' file in a browser, from there each blog post can be easily navigated to and accessed.

Step by step instructions for reproducing our notebooks:

1. Clone this repository by running `git clone https://github.com/smonnnn/Complex-Systems-Blog---MMCOWS.git` or download it as a zip file.
2. Create a venv python environment and run the 'download_and_extract_data' notebook codeblocks to download and extract the dataset.
3. Run the individual notebooks.

Your final folder structure should look like this

```
/
├── data
│   └── sensor_data
│       ├── behavior_labels
│       │   └── ...
│       ├── main_data
│       │   ├── immu
│       │   ├── uwb
│       │   └── ...
│       └── sub_data
│           ├── ankle_accel
│           └── ...
├── module-2
├── module-3
├── module-4
├── module-5
├── module-7
├── module-8
├── module-10
└── module-12
```
