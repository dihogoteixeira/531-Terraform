# EXERCICIO

- Crie uma VPC não auto gerenciada. 
- Crie uma sub-rede 10.240.1.0/24 e faça o vínculo com a VPC. 
- Crie 10 máquinas virtuais utilizando a rede criada. (Nomes construidos dinamicamente)
- Crie 5 discos de 20GB SSD, faça o vínculo com as máquinas virtuais 1-5. [definir tags para admin ou web]
- Crie 5 discos de 40GB HDD, faça o vínculo com as máquinas virtual 6-10.[definir tags para admin ou web]
- Crie 1 Firewalls permitindo TCP 22 para maquinas com tag: admin
- Crie 1 Firewalls permitindo TCP 80 para maquinas com tag: web
- Destrua toda infraestrutura.