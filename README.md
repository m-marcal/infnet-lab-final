# Projeto de Aprovisionamento de Infraestrutura AWS com Terraform

Este projeto tem como objetivo aprovisionar uma infraestrutura na Amazon Web Services (AWS) usando Terraform.

## Recursos Provisionados

Os seguintes recursos são criados pelo Terraform:

- 1 VPC (Virtual Private Cloud).
- 1 subnet pública dentro do VPC.
- 1 Internet Gateway conectado ao VPC.
- 1 tabela de rotas associada ao VPC.
- 1 rota ajustada para o Internet Gateway na tabela de rotas padrão.
- 1 security group que permite acesso externo via HTTP.
- Uma instância EC2 executando Apache Web Server (httpd) na porta 80

## Pré-requisitos

1. [Terraform](https://www.terraform.io/downloads.html) cli.
2. Credenciais AWS configuradas (access & secret key) usando o AWS CLI ou variáveis de ambiente.

## Build e Deploy


1. Clone o repositório:

```bash
git clone git@github.com:m-marcal/infnet-lab-final.git
```

2. Vá para a pasta "src":

```bash
cd src
```

3. Configure as credencias da AWS:

```bash
aws configure
```

4. Inicie o terraform:

```bash
terraform init
```

5. Aprovisione com terraform:

```bash
terraform apply --auto-approve
```

6. [Opcional] Valide a saída:

```bash
terraform output
```
