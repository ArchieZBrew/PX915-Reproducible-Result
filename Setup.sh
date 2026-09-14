#!/usr/bin/env bash
set -euo pipefail

# --- Unzip ---
unzip HEA-alloys.zip

# --- Move tarballs into their own directories ---
mkdir -p asro_part1 asro_part2
mv asro_part1.tar.gz asro_part1/
mv asro_part2.tar.gz asro_part2/

# --- Gunzip ---
gunzip asro_part1/asro_part1.tar.gz
gunzip asro_part2/asro_part2.tar.gz

# --- Untar ---
tar -xf asro_part1/asro_part1.tar -C asro_part1
tar -xf asro_part2/asro_part2.tar -C asro_part2
tar -xf LaGd-hcp.tar

# --- Modules ---
module load GCC/13.2.0 OpenMPI/4.1.6-GCC-13.2.0 OpenBLAS/0.3.24-GCC-13.2.0

# --- Build ---
(cd asro_part1 && make asro.run)
(cd asro_part2 && make postprocessS2full.run)

echo "Setup complete. To submit the job, run:"
echo "  cd LaGd-hcp && sbatch multi-all.sbatch"
