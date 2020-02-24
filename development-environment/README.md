# development-environment

Scripts que ajudam a configurar o ambiente de desenvolvimento. Preencha o arquivo "development-environment" com todos os pacotes e softwares que você utiliza e rode os scripts para configurar seu ambiente.

## check-development-environment

Verifica se todos os pacotes e softwares para desenvolvimento estão instalados.

```console
bash ./check-development-environment.sh
```

## intall

### git

```console
sudo apt install git
```

### curl

```console
sudo apt install curl
```

### node

```console
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### npm

```console
sudo apt install npm
```

### angular-cli

```console
sudo npm install -g @angular/cli
```

### surge

```console
sudo npm install -g surge
```
