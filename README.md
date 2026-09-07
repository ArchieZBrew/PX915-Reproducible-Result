# PX915-Reproducible-Result

Instructions to load the ASRO code:

* Upload "HEA-alloys.zip" onto Blythe via the command: "rsync -avzP HEA-alloys.zip esrmmf@blythe.scrtp.warwick.ac.uk:"
* unzip "HEA-alloys.zip"
* Move "asro_part1.tar.gz" and "asro_part2.tar.gz" into their own directories named "asro_part1" and "asro_part2" respectively.
* gunzip "asro_part1.tar.gz" and "asro_part2.tar.gz"
* run "tar -xf asro_part1.tar",  "tar -xf asro_part2.tar" and "tar -xf LaGd-hcp.tar"
* run "module load GCC/13.2.0 OpenMPI/4.1.6-GCC-13.2.0 OpenBLAS/0.3.24-GCC-13.2.0"
  
* cd ~/HEA-alloys/asro_part1/
  make asro.run
  cd ~/HEA-alloys/asro_part2/
  make postprocessS2full.run
  cd ~/HEA-alloys/LaGd-hcp/
  sbatch multi-all.sbatch
