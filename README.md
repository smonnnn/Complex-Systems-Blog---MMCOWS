# Complex-Systems-Blog---MMCOWS

This repository contains 8 portfolios for the Complex Systems course as part of Travis J. Wiltshire's Complex Systems Methods for Cognitive and Data Scientists course at Tilburg University.

## Portfolios

- [Temporal Dynamics of Change](module-2/Module_2.ipynb)
- [Attractor Dynamics in the MMcows Dataset](module-4/Module4.ipynb)
- [Surrogate Testing on MMCows Cow Movement Data](module-5/Module%205.ipynb)
- [Surrogate Testing on MMCows Cow Movement Data — Determinism Analysis](module-7/module_7.ipynb)
- [Measuring Feeding Coordination of Dairy Cows Using a Complex Systems Approach](module-8/portfolio-module-8.ipynb)
- [Time-Varying Interaction Strengths in Dairy Cow Thermoregulation](module-10/module_10.ipynb)
- [Signal Complexity in Dairy Cow Behavior Through Sample Entropy Analysis](module-12/portfolio-module-12.ipynb)

## Setup

Each portfolio is contained in its own notebook file. In order to run a notebook, you need to download and import the [mmcows](https://github.com/neis-lab/mmcows) data set into the cloned repository.

Step by step instructions:

1. Clone this repository by running `git clone https://github.com/smonnnn/Complex-Systems-Blog---MMCOWS.git` or download it as a zip file.
2. Download the mmcows data set from [HuggingFace](https://huggingface.co/datasets/neis-lab/mmcows) or check the original repository for download links
3. Create a `data` folder in the root directory of this repository containing the sensor data of the mmcows data set.

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
