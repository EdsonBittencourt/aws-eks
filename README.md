#aws-eks

Arquivos .tf para provisionar um cluster EKS na AWS.
Necessario instalacao de AWS-CLI e wget.
Configurar AWS-CLI com dados da conta que terá o cluster criado.

Utilizado como base modulo disponibilizado pela AWS/Hashicorp.

Gera arquivo kubeconfig automaticamente como output, para configuracao de acesso via kubectl.