
![Logo](https://i.ibb.co/xz1YBXC/maxresdefault.jpg)


# AWS-EKS 

Arquivos .tf para provisionar um cluster EKS na AWS. Necessario instalacao de AWS-CLI e wget. Configurar AWS-CLI com dados da conta que terá o cluster criado.
## Authors

- Edson Bittencourt
- AWS/Hashicorp


## Features

- Provisionamento de infra necessária e cluster EKS na AWS (Shape de servidores configuráveis)
- Implementação de workers com Auto Scaling Group.
- Geração automática de arquivo kubeconfig na saída do commando <terraform apply>, à fim de configuração do kubectl.

