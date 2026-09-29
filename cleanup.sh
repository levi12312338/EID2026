#!/usr/bin/env bash
set -e

echo "Configure nbstripout..."

# Metadaten-Noise zukünftig entfernen
git config filter.nbstripout.extrakeys '
metadata.kernelspec
metadata.language_info
cell.metadata.execution
cell.metadata.executionInfo
cell.metadata.ExecuteTime
'

echo "Normalize all notebooks..."

# Code formatieren (inkl. Notebooks)
ruff format src/*

# Notebooks von Metadaten-Noise befreien
nbstripout src/*.ipynb

# Änderungen stagen + committen
git add .
git commit -m "chore: Clean and normalize notebooks"

echo "✅ Done. Notebooks are clean and normalized."


## ANLEITUNG:
# 1. Skript ausführbar machen: chmod +x cleanup.sh
# 2. Skript ausführen: ./cleanup.sh