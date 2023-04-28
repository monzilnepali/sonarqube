# Nodal - Sonar qube

1. Initialize sonarqube app:
   ```bash
   ./sonarqube-init.sh
   ```
   > This step is require for first time only. To run sonarqube server next time run `docker start -a nodal-sonarqube`
2. Setup sonarqube
   1. Visit http://localhost:9000
   2. Setup credentials
   3. Create project for backend and frontend
   4. Generate project key
3. Run sonar-scanner
   1. Update project_key and project directory in `sonarqube-start.sh`
   2. run `sonarqube-start.sh`
   3. check sonarqube app
