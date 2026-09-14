## Setup

Clone the repository and run the setup script:

```bash
git clone https://github.com/ArchieZBrew/PX915-Reproducible-Result.git
```
```bash
cd PX915-Reproducible-Result
```
```bash
chmod +x Setup.sh
```
```bash
./Setup.sh
```

This will unzip, extract the tarballs, load the required modules, and build the Atomic Short Range Order (ASRO) code.

Then submit the job:

```bash
cd LaGd-hcp
```
```bash
sbatch multi-all.sbatch
```
