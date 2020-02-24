# development-environment

Scripts que ajudam a configurar o ambiente de desenvolvimento. Preencha o arquivo "development-environment" com todos os pacotes e softwares que você utiliza e rode os scripts para configurar seu ambiente.

## check-development-environment

Verifica se todos os pacotes e softwares para desenvolvimento estão instalados.

```console
bash ./check-development-environment.sh
```

## install

```console
sudo apt install git
sudo apt install curl
sudo apt install npm

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g @angular/cli
sudo npm install -g surge
```
