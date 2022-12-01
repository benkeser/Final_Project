# HOW TO: Create a Report on HRV by MSI
This code will allow you to create a document that analyzes HRV (Heart Rate Variability) by MSI (Mental Stress Ischemia). 

# Contents
## Code
The code folder contains: 
  1. 01_make_table.Rmd - this file creates the table featured in the final document
  2. 02_make_fig.Rmd - this file create the figure featured in the final document
  
## Data 
The data folder contains hrv_small, a fake dataset to represent my real dataset

## Project.Rmd
This is the final R-markdown, it uses the code from the two R-markdowns in the code folder to build the figure and the table and put it all in one place.

## render_report.R
This is an R-script to render the Project.Rmd file.

## Makefile 
This makefile sets the rules for making the final report.


# Report Generation 
In order to generate the report, you must first build the docker image associated with the project. To do so, you may either run "make build" in the command line to build the image from scratch or you can run "make pull" to pull the image from DockerHub. Building from scratch will take a long time so I recommend the "make pull" direction. 

After you have built the image, you can produce the report. This is done by running the container you have just built. In the terminal, run the command "make project_mac" or "make project_windows" respectively. You will find the final report in the "report" folder. 


