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
#### Exercicio aula-04

[Types variables](https://www.terraform.io/docs/language/expressions/types.html "Types variables")

Para cada exercício, crie um novo diretório. 

• Aproveite parar fazer seus testes, todo novo atributo que for criado, faça sempre o “terraform plan” para verificar a saída no output. 
• Caso houver qualquer erro, leia atentamente o terminal. 
• Lembre-se que o objetivo aqui é trabalhar com os diversos tipos de variáveis, ou seja, sempre utilize description e type (string, bool, list e etc) para cada uma das variáveis.

Exercício 1.

- Crie uma VPC não auto gerenciada. 
- Crie uma sub-rede 10.240.1.0/24 e faça o vínculo com a VPC. 
- Crie duas máquina virtual utilizando a rede criada. 
- Crie dois discos de 20GB SSD com labels descritos acima e faça o vínculo com a máquina virtual 1. 
- Crie dois discos de 40GB HDD com labels descritos acima e faça o vínculo com a máquina virtual 2. 
- Destrua toda infraestrutura.