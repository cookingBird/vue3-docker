
pkg_name="vue-test"


npm run build

docker build -t $pkg_name .

docker save  -o ./$pkg_name.tar  $pkg_name:latest

#docker load --input $pkg_name.tar

#docker run -p 80:80 $pkg_name
