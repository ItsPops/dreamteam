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
  - [Troubleshooting](#troubleshooting)
  - [Licence](#licence)

## Description du projet

Le projet se compose de plusieurs modules Terraform, chacun responsable de la création d'une ressource spécifique.

- Décrire chaque modules

## Utilisation

Guide d'utilisation afin de faire fonctionner le projet :

- Clonez le dépôt git.
- Allez dans le dossier "app".

Pour vous connecter à AWS, vous devrez fournir l'access_key et la secret_key donc devrez maintenant créer un fichier ( dans /app ) intitulé `terraform.tfvars`, copiez le contenu ci-dessous dans ce dernier. Il sera interprété par Terraform lors de la commande terraform.init

>Ce fichier contient la configuration dans Terraform qui permet de stocker les variables spécifiques à votre infrastructure

```terraform
access_key  = "KEY"
secret_key  = "KEY"

...
```
- Sauvegardez le fichier `terraform.tfvars`
- Initialisez Terraform en utilisant la commande terraform init.
- Créez le plan de déploiement en utilisant la commande terraform plan. Cette commande permet également de voir de potentielles erreurs.
- Déployez l'infrastructure en utilisant la commande terraform apply.

## Avancement du projet 

Cette partie recence ce qui a été réalisé dans le projet :

- [x] Création du dossier "app" qui contient les modules pour déployer une instance EC2 avec des variables surchargées.

- [x] Mise en place d'un module de création d'instance EC2 en utilisant la dernière version de Ubuntu Bionic avec la taille et le tag variabilisées.

- [x] Mise en place d'un module de création de volume EBS avec une taille variabilisée.

- [x] Mise en place d'un module de création d'adresse IP publique qui s'attache au security group.

- [x] Mise en place d'un module de création de security group qui ouvre les ports 80 et 443.

- [x] Installation de Nginx à la fin du déploiement et enregistrement de l'adresse IP publique dans un fichier nommé `ip_ec2.txt`.

## Troubleshooting 

&&&

## Licence

Ce projet est à but éducatif, il n'est soumis à aucune licences.
