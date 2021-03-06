# update-version

Script criado para atualizar versões de software.

## Semântica básica

- MAJOR: Em caso de brake change, ou seja, essa versão não é mais compatível com a anterior
- MINOR: Novas funcionalidades sem brake change
- PATCH: Bugs, fix e refatorações

## Como usar o script?

Você deve informar os seguintes parâmetros:
- **version** (Versão atual do software. Ex.: 1.0.0)
- **update** (Tipo da atualização a ser incrementada, respeitando a semântica. Os valor aceitoes são: major/minor/patch)
- **increment** (Valor a ser incrementado. Este parâmetro é opcional, caso não informado o valor padrão é 1)

### Exemplos

```console
$ bash ./update-version.sh 5.1.3 major
6.0.0
```

```console
$ bash ./update-version.sh 2.5.3 minor
2.6.0
```

```console
$ bash ./update-version.sh 2.5.22 patch
2.5.23
```

```console
$ bash ./update-version.sh 8.5.3 patch 3
8.5.6
```
