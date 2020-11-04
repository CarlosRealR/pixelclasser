pixelclasser
============

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
<!-- badges: end -->

This package contains a set of tools to classify the pixels of digital
images into colour categories arbitrarily defined by the user. It is a
simple version of the multivariate technique known as Support Vector
Machine, adapted to this particular use.

The procedure is simple. A digital image in JPEG or TIFF format is
imported into R. The original image contains three colour variables (or
bands): *R*, *G*, and *B*. The first step is to transform them into
proportions (*r*, *g* and *b*), which simplifies the problem into a
bivariate one. The pixels of the test images can then be represented in
the plane defined by two of the variables (the user judges which two are
more convenient by trial and error) and, hopefully, they would form
separate clusters (pixel categories). The user then traces straight
lines (classification rules) that enclose the pixel clusters. Using the
mathematical expression for these rules and the values of the
transformed variables, each pixel can be tested for pertenence to each
category. This produces a set of logical matrices (incidence matrices)
indicating which pixels belong to each category, stored in appropriate R
objects. These can be submitted to posterior analysis or used to create
a new version of the original image showing the category of each pixel.

`pixelclasser` contains functions to visualize the pixels of the images
and the rules created by the user, to create the rules and to store them
in objects that can be passed to function `classify_pixels()` for the
analysis of the image, and functions to import and export the original
and the classified images.

Installation
------------

You can install the development version from GitHub using `remotes` or
`devtools`

    remotes::install_github("CarlosRealR/pixelclasser", build_vignettes = TRUE)
    devtools::install_github("CarlosRealR/pixelclasser", build_vignettes = TRUE)

Using pixelclasser
------------------

The workflow and how to use the functions is explained in the vignette
included in the package:

    vignette("pixelclasser")

The vignette explains how to use the code and illustrates the procedure
outlined above using a set of images included as package data.

<img src="./inst/extdata/ExampleImages.png" width="50%" style="display: block; margin: auto;" />

The following figure shows the original image and the results of the two
classifications.

<img src="./inst/extdata/ClassifResults.png" width="100%" style="display: block; margin: auto;" />