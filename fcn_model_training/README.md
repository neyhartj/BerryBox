
# BerryBox

<!-- badges: start -->
<!-- badges: end -->

### fcn_model_training

This sub-directory contains code and resources to train production or
developmental version of the FCN model.

#### Directory structure

**`annotatedImagesMask`** - The folder of full-size images and masks.
These are used for training the model. A dataset of images and masks can
be found here (add link).

Other folders are created by the
`trainTest_BerryBox_FCNSegmentationModel.py` script, including
**`train`**, **`test`**, and **`model_output`**.

#### Scripts

**`trainTest_BerryBox_FCNSegmentationModel.py`** - a Python script to
train, test, and validate a developmental version of the FCN model. This
script is meant to be run using HPC resources.

**`run_trainTest_BerryBox_FCNSegmentationModel_SCINet.sh`** - a bash
script used to run the `trainTest_BerryBox_FCNSegmentationModel.py`
script using HPC resources from SCINet.

Edit settings in the `trainTest_BerryBox_FCNSegmentationModel.py`
script. You may wish to play with settings such as `num_epochs`,
`scale`, and `batch_size`. If you want to reserve some images for
testing (i.e. holdout), edit the `testing_fraction` setting to be
greater than zero. Once you have decided on tuning settings, set
`testing_fraction` to zero to train the production model.

To run the training script, use the following command:

    sh run_trainTest_BerryBox_FCNSegmentationModel_SCINet.sh