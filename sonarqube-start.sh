#!/bin/bash

FE_PROJECT_KEY=sqp_a87a1a8ee2bbc05197731b64e6689806bec44742
BE_PROJECT_KEY=sqp_df59522493ac68937d29d8a94e4d77b8bb8e3396

FE_PATH=$HOME/Desktop/nodal/nodal-frontend
BE_PATH=$HOME/Desktop/nodal/nodal-backend


sonar-scanner \
  -Dsonar.projectKey=nodal-frontend \
  -Dsonar.projectBaseDir=$FE_PATH \
  -Dsonar.sources=./src \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=$FE_PROJECT_KEY

echo "Frontend codebase scanner completed"

sonar-scanner \
  -Dsonar.projectKey=nodal-backend \
  -Dsonar.projectBaseDir=$BE_PATH \
  -Dsonar.sources=./src \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=$BE_PROJECT_KEY

echo "Backend codebase scanner completed"
