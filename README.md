## Setup

Clone the repository and run the setup script:

```bash
git clone git@github.com:your-username/HEA-alloys.git
cd HEA-alloys
chmod +x setup.sh
./setup.sh
```

This will unzip, extract the tarballs, load the required modules, and build both `asro.run` and `postprocessS2full.run`.

Then submit the job:

```bash
cd LaGd-hcp
sbatch multi-all.sbatch
```
