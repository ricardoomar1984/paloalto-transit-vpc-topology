# paloalto-transit-vpc-topology
Script para criar VPC Transit. <br>
Esse script cria a estrutura de VPC Transit e 2 VPC Spokes que serão conectados ao VPC Transit atravez de VPN IPsec <br>
<br>
<br>
Pre-Requisitos:<br>
-aws-cli<br>
-terraform<br>
<br>
Configure o AWS-cli  incluindo a chave <br>
dentro da console da AWS defina a access-key para o usuario:<br>
IAM --> user --> Security Credental --> Access-Key --> Create access-key<br> 
configure o aws cli <br>
defina a acces-key key <br>
defina a secret-key <br>
esconha a região <br>
<br>
esse script esta dividido 2 diretorios: <br>
01-cria-vpc-transit<br>
02-spokes-vpc<br>
<br>
o primeiro diretorio contem os scripts que criam: <br>
1 vpc <br>
2 subnets em 2 AZ separadas <br>
2 instancias com ( ami-linux, que devem ser substituidas pela imagem de paloalto que será utilizada, alterando no arquivo 02-variable.tf a variavel instance-ami) <br>
adciona uma segunda interface a essas instancias que serão utilizadas como interface de dataplane.<br>
1 internet gw<br>
route table e associação das subnets <br>
chave ssh para conectar na instancia.<br> 
<br>
para execução <br>
terraform init <br>
terraform plan <br>
teraform apply <br>
<br>
O segundo diretorio: <br>
02-spokes-vpc <br>
<br>
Possui um script sh que deve ser executado para pegar o ip da interface eth1 de cada instancia que será utlizada para fechar a VPN: <br>
02-spokes-vpc/pega_ip_fws>.sh <br>
<br>
esse script ira utilizar comandos de aws cli para resgatar os ips validos que foram associados a interface eth1 de cada firewall. esses ips <br>
serão utilizados para criar o customer-gw de cada firewall para fechar vpn, criando 2 arquivos: ip_eth1_firewall1.txt ip_eth1_firewall2.txt <br>
contendo os ips.<br>
<br>
depois de executar esse script pode executar novamente o terraform nessa pasta: <br>
terraform init <br>
terraform plan <br>
terraform apply <br>
<br>
apos essa execução serão criados: <br>
-2 vpcs spokes com suas respectivas <br>
-2 subnets para cada spoke uma em cada AZ, <br> 
-route table <br>
-igw <br>
-2 customer gw <br>
-2 vpn gw, um para cada vpc <br>
-4 vpn connections <br>
<br>
A partir de agora é possivel exportar a configuração de VPN e importar no firewalls paloalto.<br> 
