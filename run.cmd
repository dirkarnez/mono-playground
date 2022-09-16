docker build -t mono .
docker run --rm -it -v "%cd%:/opt/app" mono
pause