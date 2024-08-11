Script para criar VPC Transit

configure a conta com aws configure

entre no diretorio 01-cria-vpc-transit, para criar o vpc transit e os 2 firewalls 
terraform init
terraform plan 
terraform apply

entre no diretorio 02-spokes-vpc e rode o comando
./pega_ips_fw.sh
isso ira resgatar os ips que foram associados as interfaces validas eth1 dos firewalls, isso sera usado para criar o customer-gws

rode os comandos abaixo para criar o spoke_vpc1 e spoke_vpc2: 
terraform init
terraform plan
terraform apply 

os spoke vpcs estao separados em 01-**** e 02-****, todos scripts começando com 01- são associados a criação do primeiro vpc e os que começam com 02- associados
a criação do segundo vpc, caso necessario, adicionar mais spoke vpcs, o ideal eh copiar os arquivos para 03 ... 04 .. etc e fazer as devidas adaptações.

Obs: as tunnel interface que serão associadas com os firewalls são definidas no arquivo 0?-vpn-connection.tf e devem ser alteradas sequencialmente para não dar 
conflito no lado do Firewall

Após rodar o script .. faça download pelo painel das configs que devem ser adicionadas no firewall. 
