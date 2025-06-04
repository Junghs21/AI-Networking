## Create a virtual environment
```bash
python3 -m venv [VMname]
source [VMname]/bin/activate
```


## Create a Docker environment
- Map the Docker port to the port used by Jupyter Notebook
- Host Port and Docker Port must match
```bash
docker build -f [Dockerfile] -t [DockerImage] . 
docker run -dit -p [HostPort]:[DockerPort] --name [Docker App] [DockerImage]
docker exec -it [Docker App] bash 
```


## Download Lab materials
```bash
git clone https://github.com/Junghs21/AI-Networking.git
cd AI-Networking/
```


##  Prepare a hands-on environment
```bash
pip install --upgrade pip

pip install setuptools==59.5.0 wheel==0.37.1 Cython==0.29.21

pip install numpy==1.18.5
pip install scikit-learn==0.21.3 --no-binary :all:
pip install murmurhash==1.0.2 --no-binary :all:

pip install protobuf==3.20.3

pip install -r requirements.txt --no-cache-dir
```


## Run Jupyter
```bash
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
```
