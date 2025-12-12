FROM jenkins/jenkins:lts

# 1. On passe en root pour avoir le droit d'installer des paquets
USER root

# 2. On met à jour et on installe 'make' et 'git' (au cas où)
RUN apt-get update && apt-get install -y make git

# 3. On repasse en utilisateur jenkins pour la sécurité (Standard Jenkins)
USER jenkins

# 4. Désactivation du Wizard d'installation
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# 5. Installation des plugins demandés
RUN jenkins-plugin-cli --plugins \
    cloudbees-folder \
    configuration-as-code \
    credentials \
    github \
    instance-identity \
    job-dsl \
    script-security \
    structs \
    role-strategy \
    ws-cleanup
