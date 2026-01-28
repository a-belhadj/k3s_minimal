# K3s Local Cluster avec Ansible

Déploiement d'un cluster k3s local via Ansible avec Headlamp.

## Prérequis

- uv installé
- Accès sudo

## Installation

```bash
make setup
make install
```

Ou en une seule commande:

```bash
make install
```

## Utilisation

```bash
export KUBECONFIG=$PWD/kubeconfig
kubectl get nodes
```

## Désinstallation

```bash
make uninstall
```
