#!/bin/bash

# Step 1: Create individual archives
zip -r reference_archive.zip reference_archive/
zip -r foundational_documents.zip foundational_documents/
zip -r technical_legal_archives.zip technical_legal_archives/
zip -r expanded_topics.zip expanded_topics/
zip -r interactive_repository.zip interactive_repository/

# Step 2: Create a mono-archive containing all archives
mkdir -p all_archives
mv reference_archive.zip all_archives/
mv foundational_documents.zip all_archives/
mv technical_legal_archives.zip all_archives/
mv expanded_topics.zip all_archives/
mv interactive_repository.zip all_archives/
zip -r all_archives.zip all_archives/

echo "All archives and mono-archive created successfully."