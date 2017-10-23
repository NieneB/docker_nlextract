Clone or download this repro. 

Change the settings in the default.args file before building the image.
Including 
  - input directory
  - temp directory 
  - Postgis connections

Then build: 

    docker build -t niene/nlextract:1.2.1 . 
  
Run: 

    docker-compose run niene/nlextract:1.2.1 
  
