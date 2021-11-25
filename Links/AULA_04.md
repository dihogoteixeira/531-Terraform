#### ALTERANDO GRADATIVAMENTE SUA INFRAESTRUTURA

Como temos mais de 1 arquivo, o Terraform irá ler todos os arquivos .tf e irá executar cada um deles, mas não queremos isso neste momento, queremos criar recursos de forma um pouco mais controlada. 
Um dos sub-comandos para o comando `terraform plan/apply/destroy` e o `-target`. 

O comando tem a seguinte sintaxe:

```sh
terraform <ação> -target=recurso.nome_do_recurso
```

Exemplo:

1. plan
```sh
terraform plan -target=google_compute_network.vpc_network
```

2. apply
```sh
terraform apply -target=google_compute_network.vpc_network
```

3. destroy
```sh
terraform plan -target=google_compute_network.vpc_network
```

#### GERENCIANDO O ESTADO DA SUA INFRAESTRUTURA

Podemos utilizar outro comando para facilitar buscas de recursos por nome, ainda mais conforme sua infrea estiver grande, fica trabalhoso abrir arquivos e procurar nome do recurso que deseja deletar.

O comando para nos ajudar nesta tarefa é:

```sh
terraform state <subcommand> [options] [args]
```

Exemplo:

1. list

```sh
terraform state list
```

2. rm

```sh
terraform state rm
```