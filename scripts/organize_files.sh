#!/bin/bash

# Step 1: Define the directory structure
mkdir -p reference_archive/ISO_Standards
mkdir -p reference_archive/BIS_Publications
mkdir -p reference_archive/Case_Studies
mkdir -p foundational_documents/Elemental_Imperium
mkdir -p foundational_documents/GRU
mkdir -p technical_legal_archives/Blockchain_Architectures
mkdir -p expanded_topics/AI_in_Finance
mkdir -p interactive_repository/PDFs

# Step 2: Move files to their respective directories
mv dev_write/ISO_20022.pdf reference_archive/ISO_Standards/
mv dev_write/ISO_TC_307.pdf reference_archive/ISO_Standards/
mv dev_write/ISO_22301.pdf reference_archive/ISO_Standards/
mv dev_write/CBDC_Overview.pdf reference_archive/BIS_Publications/
mv dev_write/RippleNet_Case_Study.pdf reference_archive/Case_Studies/
mv dev_write/Governance_Framework.md foundational_documents/Elemental_Imperium/
mv dev_write/Tokenomics_M00_M0_M1.md foundational_documents/GRU/
mv dev_write/Layer_0_Interoperability.md technical_legal_archives/Blockchain_Architectures/
mv dev_write/Risk_Management_with_AI.md expanded_topics/AI_in_Finance/
mv dev_write/Reference_Archive_Index.pdf interactive_repository/PDFs/

echo "Files moved to their respective directories."