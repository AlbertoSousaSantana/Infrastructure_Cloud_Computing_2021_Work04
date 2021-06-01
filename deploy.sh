# login azure (primeira execução)
az login

# criar chaves de acesso ao Azure para o terraform (primeira execução)
az ad sp create-for-rbac --skip-assignment

cd terraform

# iniciar terraform (primeira execução)
terraform init

# planejar alterações
terraform plan

# alterar ambiente
terraform apply

# obter credenciais do AKS
az aks get-credentials --resource-group rg-aulainfra --name teste-aks

# subir configuração da aplicação
kubectl apply -f aks/1-config

# subir configuração da aplicação
kubectl apply -f aks/2-db

# subir configuração da aplicação
kubectl apply -f aks/3-nginx

# Lista tudo de aulainfra
kubectl get all -n aulainfra 

# Comando pra acessar o pod  nginx
kubectl exec -it nginx -- sh

#Comandos para testar o pod de mysql dentro do pod nginx
apt-get update
apt-get install inetutils-ping
ping 10.0.21.74
