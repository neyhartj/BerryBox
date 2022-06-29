
# BerryBox

<!-- badges: start -->
<!-- badges: end -->

An image analysis pipeline to measure quality-related traits of
individual cranberries photographed in a homemade lightbox. These traits
are being used for breeding and horticultural applications. This
pipeline uses a fully convolutional network (FCN) workflow to perform
semantic segmentation of berry pixels from background pixels. The [FCN
workflow](https://github.com/daripp/XCT_FCN) was developed by [Devin
Rippner](https://www.ars.usda.gov/people-locations/person?person-id=56290)
and the lightbox was constructed based on a [similar application in
hops](https://github.com/kraltendorf/HopBox).

## Repository structure

**`fcn_model_training`** - resources and code to train developmental or
production versions of the FCN model.

**`resources`** - other resources for the image analysis pipeline,
including a blank image for color correction.

**`lightbox`** - materials and instructions for assembling your own
lightbox.

**`imagesToSegment`** - when deploying the FCN model in a production
environment, place images here for which inferences will be made.

**`output`** - when deploying the FCN model, inference outputs will be
stored here.

## Scripts

Two scripts are available in this repository for deploying the FCN model
under a production environment. Instructions for running either are
contained within the notebook.

**`deploy_BerryBox_Production_FCNSegmentationModel_Colab.ipynb`** - A
jupyter notebook for running the pipeline in a Google Colab environment.

**`deploy_BerryBox_Production_FCNSegmentationModel_SCINet.ipynb`** - A
jupyter notebook for running the pipeline using SCINet HPC resources.

## Deploying a production model

To deploy the production FCN model, follow these steps:

1.  Clone this repository using `git clone`.  
2.  
