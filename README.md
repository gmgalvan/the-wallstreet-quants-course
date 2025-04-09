# 📊 The Wall Street Quants Course📈

## 🎓 Course Overview
This repository contains materials for "The Wall Street Quants" course, designed to provide comprehensive training in quantitative finance, algorithmic trading, and financial modeling techniques used by professionals in the financial industry.

## 📂 Repository Structure
- **lessons/** - Lecture materials and course content
- **projects/** - Larger course projects, maybe ideas
- **homework/** - Weekly assignments and solutions

### 🐳 Docker Setup
This repository includes a Docker configuration for easy setup. The Dockerfile is configured to run Jupyter notebooks with Python 3.12:

To run the environment using Docker:

1. Make sure Docker is installed on your system
2. Create a `requirements.txt` file with your project dependencies
3. Build the Docker image:
   ```
   docker build -t wallstreet-quants .
   ```
4. Run the container:
   ```
   docker run -p 8888:8888 -v $(pwd):/workspace wallstreet-quants
   ```
5. Open the Jupyter notebook URL displayed in the terminal (typically with a token)
