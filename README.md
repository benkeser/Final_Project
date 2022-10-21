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

# TO RUN
To run, all you must do is run 'make' while in the Project Folder.