## Setup

Clone the repository and run the setup script:

```bash
git clone git@github.com:/ArchieZBrew/PX915-Reproducible-Result.git
cd HEA-alloys
chmod +x setup.sh
./setup.sh
```

This will unzip, extract the tarballs, load the required modules, and build the Atomic Short Range Order (ASRO) code.

Then submit the job:

```bash
cd LaGd-hcp
sbatch multi-all.sbatch
```
