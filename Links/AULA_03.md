# CRIANDO CHAVE PARA CONTA DE SERVICO NA GCP:

https://console.cloud.google.com/apis/credentials/serviceaccountkey

Página 39
---
# EXPORTANDO VARIAVEIS DE AMBIENTE

Adicionar path do arquivo json que contem sua `ServiceAccountKey`:
```sh
export GOOGLE_APPLICATION_CREDENTIALS={{VALOR}}

```

Adicionar `ID` do projeto GCP:
```sh
export GOOGLE_PROJECT={{VALOR}}
```
---
## REFS

https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference
https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started