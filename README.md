# Mini-Projet-WebInfraDeployment

<p align="center">
    <img src="https://zupimages.net/up/23/17/2nlw.png" alt="Image d'en-tête" width=650">
</p>


Ce mini-projet a été réalisé dans le cadre d'un exercice noté pour le module "Gestion des configurations et infrastructure as code avec Terraform et Puppet". Ce mini-projet a été réalisé durant une journée.

>Le README remplit la fonction de compte rendu détaillé du projet.

## Pré-requis

Avant de commencer, il est nécessaire d'installer Terraform sur votre machine. Vous pouvez trouver les instructions d'installation sur [la page officielle de Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

##  Sommaire

- [Mini-Projet-WebInfraDeployment](#mini-projet-webinfradeployment)
  - [Pré-requis](#pré-requis)
  - [Sommaire](#sommaire)
  - [Description du projet](#description-du-projet)
  - [Utilisation](#utilisation)
  - [Avancement du projet](#avancement-du-projet)
  - [Licence](#licence)

## Description du projet

Le projet se compose de plusieurs modules Terraform, chacun responsable de la création d'une ressource spécifique.

Le fichier Terraform main.tf définit l'utilisation des quatre modules : ebs, ec2, ip et aws.

- `ebs` : **Elastic Block Store**
  - Ce fichier contient la définition d'un volume Elastic Block Store (EBS) pour AWS. Il crée un volume EBS de la taille spécifiée dans la région spécifiée, et ajoute les tags spécifiés.

- `ec2` : **Amazon Elastic Compute Cloud**
  -  Ce fichier contient la définition d'une instance Amazon Elastic Compute Cloud (EC2) pour AWS. Il crée une instance EC2 en utilisant l'image Ubuntu Bionic la plus récente, le type d'instance et les tags spécifiés. Il configure également une connexion SSH à l'instance, installe et démarre le serveur Web NGINX, et ouvre les ports 80, 443 et 22 pour le trafic entrant. Il associe également l'adresse IP Elastic à l'instance.

- `ip` : **IP Elastic**
  - Ce fichier contient la définition d'une adresse IP Elastic pour AWS. Il crée une adresse IP Elastic pour le compte AWS spécifié et la lie à l'adresse IP privée spécifiée.

- `sg` : **Security Group**
  - Ce fichier contient la définition d'un groupe de sécurité AWS pour les instances EC2. Il crée un groupe de sécurité pour les instances, qui ouvre les ports 22, 80 et 443 pour le trafic entrant et les ports 443 et 81 pour le trafic sortant. Il lie également le groupe de sécurité à l'instance EC2.

## Utilisation

> Précision :  
>
> Pour vous connecter à AWS, vous devrez fournir l'access_key et la secret_key AWS. Cependant, afin de faciliter la correction, nous avons laissé l'access_key et la secret_key dans le fichier `terraform.tfvars` dans un champ dédié.
>
>**Il convient de souligner que cette pratique n'est pas courante dans le monde professionnel et ne doit pas être utilisée comme modèle à suivre. Elle peut éventuellement être utilisée à des fins pédagogiques ou expérimentales.**

Guide d'utilisation afin de faire fonctionner le projet :

- Clonez le dépôt: ```git clone https://github.com/ItsPops/dreamteam.git```.
- Dans ```app/terraform.tfvars```, renseigner clés d'accès et de sécurité Amazon à l'emplacement indiqué
- Se rendre dans le dossier "app": ```cd .app/```
- Initialisez Terraform en utilisant la commande ```terraform init```.
- Créez le plan de déploiement en utilisant la commande ```terraform plan```. Cette commande permet également de voir de potentielles erreurs.
- Déployez l'infrastructure en utilisant la commande ```terraform apply```.

## Avancement du projet 

Cette partie recence ce qui a été réalisé dans le projet :

- [x] Création du dossier "app" qui contient les modules pour déployer une instance EC2 avec des variables surchargées.

- [x] Mise en place d'un module de création d'instance EC2 en utilisant la dernière version de Ubuntu Bionic avec la taille et le tag variabilisées.

- [x] Mise en place d'un module de création de volume EBS avec une taille variabilisée.

- [x] Mise en place d'un module de création d'adresse IP publique qui s'attache au security group.

- [x] Mise en place d'un module de création de security group qui ouvre les ports 80 et 443.

- [x] Installation de Nginx à la fin du déploiement et enregistrement de l'adresse IP publique dans un fichier nommé `ip_ec2.txt`.

## Licence

Ce projet est à but éducatif, il n'est soumis à aucune licences.
