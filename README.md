# paloalto-transit-vpc-topology
Script para criar VPC Transit. <br>
Esse script cria a estrutura de VPC Transit e 2 VPC Spokes que serão conectados ao VPC Transit atravez de VPN IPsec <br>
<br>
<br>
Pre-Requisitos:<br>
-aws-cli<br>
-terraform<br>
<br>
Configure o AWS-cli  incluindo a chave 
dentro da console da AWS defina a access-key para o usuario:
IAM --> user --> Security Credental --> Access-Key --> Create access-key 
configure o aws cli 
defina a acces-key key 
defina a secret-key 
esconha a região 

esse script esta dividido 2 diretorios: 
01-cria-vpc-transit
02-spokes-vpc

o primeiro diretorio contem os scripts que criam: 
1 vpc 
2 subnets em 2 AZ separadas
2 instancias com ( ami-linux, que devem ser substituidas pela imagem de paloalto que será utilizada, alterando no arquivo 02-variable.tf a variavel instance-ami)
adciona uma segunda interface a essas instancias que serão utilizadas como interface de dataplane.
1 internet gw
route table e associação das subnets 
chave ssh para conectar na instancia. 

para execução 
terraform init
terraform plan
teraform apply

O segundo diretorio: 
02-spokes-vpc

Possui um script sh que deve ser executado para pegar o ip da interface eth1 de cada instancia que será utlizada para fechar a VPN:
02-spokes-vpc/pega_ip_fws>.sh

esse script ira utilizar comandos de aws cli para resgatar os ips validos que foram associados a interface eth1 de cada firewall. esses ips 
serão utilizados para criar o customer-gw de cada firewall para fechar vpn, criando 2 arquivos: ip_eth1_firewall1.txt ip_eth1_firewall2.txt 
contendo os ips.

depois de executar esse script pode executar novamente o terraform nessa pasta:
terraform init
terraform plan 
terraform apply 

apos essa execução serão criados: 
2 vpcs spokes com suas respectivas
2 subnets para cada spoke uma em cada AZ, 
route table
igw
2 customer gw
2 vpn gw, um para cada vpc
4 vpn connections 

A partir de agora é possivel exportar a configuração de VPN e importar no firewalls paloalto. 
