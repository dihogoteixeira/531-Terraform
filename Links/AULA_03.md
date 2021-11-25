#### CRIANDO CHAVE PARA CONTA DE SERVICO NA GCP

1. [Create Service Account](https://console.cloud.google.com/apis/credentials/serviceaccountkey "Create Service Account")

#### OBTENDO ID DO PROJETO NO CONSOLE GCP

2. [Project ID](https://console.cloud.google.com/home/dashboard "Project ID")

Referência na apostila: `PÁGINA 39`

---
#### EXPORTANDO VARIAVEIS DE AMBIENTE

1. Adicionar caminho absoluto do arquivo.json que contem sua `ServiceAccountKey` obtida na criação da key:
```sh
export GOOGLE_APPLICATION_CREDENTIALS=/seu/path/para/arquivo.json
```

2. Adicionar `ID do projeto` GCP:
```sh
export GOOGLE_PROJECT=seu-project-id
```

---
### ADICIONANDO VARIAVEIS DE AMBIENTE NO BASH PROFILE

```sh
sudo tee -a ~/.bashrc > /dev/null <<EOF
# EXPORTING PROVIDER GCP VARS TO TERRAFORM
export GOOGLE_APPLICATION_CREDENTIALS=/seu/path/para/arquivo.json
export GOOGLE_PROJECT=seu-project-id
EOF
```
---
#### RESOLVENDO PROBLEMA DE EXPORT NO WINDOWS

```go
provider "google" {
  project     = "project-id"
  credentials = file("/path/para/arquivo.json")
}
```
---
#### DOC DE REFERÊNCIA TERRAFORM

1. [Getting Started](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started "Getting Started")

2. [Provider Reference](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference "Provider Reference")

3. [HCL Reference](https://www.terraform.io/docs/language/syntax/configuration.html "HCL Reference")

---