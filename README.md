
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

[**`fcn_model_training`**](https://github.com/neyhartj/BerryBox/tree/master/fcn_model_training) -
resources and code to train developmental or production versions of the
FCN model.

**`resources`** - other resources for the image analysis pipeline,
including a blank image for color correction.

**`lightbox`** - materials and instructions for assembling your own
lightbox.

**`exampleImage`** - three example images are located here.

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

To deploy the trained, cranberry-specific production FCN model on Google
Colab, follow these steps:

1.  Clone this repository using
    `git clone git@github.com:neyhartj/BerryBox.git`.  
2.  Upload the repository to Google Drive.  
3.  Download the trained model and metadata from this [Google Drive
    folder](https://drive.google.com/drive/u/2/folders/1xyqVJf9sNX7Yb1VQeCOupQc1oG1nv92e).
    (This model will be made available elsewhere.) Upload both files to
    the uploaded BerryBox repository on Google Drive.  
4.  Open the
    [deploy_BerryBox_FCNSegmentationModel_Colab.ipynb](https://github.com/neyhartj/BerryBox/blob/master/deploy_BerryBox_FCNSegmentationModel_Colab.ipynb)
    notebook in Colab.  
5.  Edit settings and variables as needed in the notebook. Do not edit
    any lines after the “Other Settings” section. If you are using the
    example images provided in this repository, the only setting you
    should need to change is the `proj_dir` path.  
6.  Run the notebook!
