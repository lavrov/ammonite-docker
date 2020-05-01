image_name = lavrov/ammonite
scala_version=2.13
ammonite_version = 2.1.1

default:
	docker build . --build-arg scala_version=${scala_version} --build-arg ammonite_version=${ammonite_version} --tag ${image_name}:${scala_version}-${ammonite_version}

push: default
	docker push ${image_name}
