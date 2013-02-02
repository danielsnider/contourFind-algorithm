Contour Finding Algorithm
==================

This algorithm creates "groups" of high intensity pixels. For example, letters can be grouped into words, or words can be grouped into paragraphs. Then the locations of groups can be accessed programmatically. High performance is achieved by operating on the integral of the image. However, only rectangular group regions are supported because the implementation is based on a basic split and merge algorithm. A better approach would be based on a region growing algorithm. Or just use OpenCV's built-in function called [findContours](http://docs.opencv.org/modules/imgproc/doc/structural_analysis_and_shape_descriptors.html?highlight=findcontours#findcontours) to find contours efficiently.



Demo @ my online portfolio: [http://challengeaccepted.me/](http://challengeaccepted.me/)

##Dependencies
- [OpenCV](http://opencv.willowgarage.com/wiki/InstallGuide%20%3A%20Debian)
- c++ compiler

Install
-------
Linux:

    git clone git@github.com:danielsnider/contourFind-algorithm.git
    cd contourFind-algorithm
    chmod +x ./build.sh
    ./build.sh

Usage
-----
    ./contour_find.out [image] [min] [thres] [scan_rate] [output_img_file]

##### Usage Parameters

`min` – Minimum distance between disconnected pixel groups.

`thres` – Noise tolerance. 

`scan_rate` – Scanning window step rate. (effects performance) 
    
###### Example usage
    ./contour_find.out test-images/t2.png 25 0 1 ./out.jpg


