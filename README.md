# Projet DevOps

Ce projet utilise Ansible pour installer Docker et déployer un serveur Flask.

## Instructions

- Pour accéder au serveur, ouvrez un navigateur et allez à l'adresse `http://<ec2-3-255-250-142.eu-west-1.compute.amazonaws.com>:5000`.

## Problèmes 

### Description du Problème

Lors de la tentative de connexion à l'instance EC2, nous avons rencontré des problèmes liés aux permissions de la clé privée `keyPair.pem`. Les erreurs suivantes se sont produites :

- **Erreur de permissions** : Les permissions de la clé privée étaient trop ouvertes (0666 ou 0777), ce qui a empêché SSH d'utiliser cette clé pour s'authentifier auprès de l'instance EC2.

- **Message d'erreur** : 
WARNING: UNPROTECTED PRIVATE KEY FILE!
Permissions 0666 for './keyPair.pem' are too open.
It is required that your private key files are NOT accessible by others.

### Conséquences

En raison de ce problème de permissions, nous n'avons pas pu établir de connexion SSH à l'instance EC2, ce qui a empêché l'exécution de nos playbooks Ansible.

### Solution Apportée

- Nous avons essayés de modifier les permissions en passant par wsl et Windows mais aucunes méthodes trouvées sur Internet ou dans le cours n'a permit de résoudre ce problème.

