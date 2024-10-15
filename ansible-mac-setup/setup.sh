#!/bin/bash

# Colores para los mensajes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Iniciando la configuración de tu nuevo Mac...${NC}"

# Instalar Xcode Command Line Tools
echo -e "${GREEN}Instalando Xcode Command Line Tools...${NC}"
xcode-select --install

# Esperar a que se complete la instalación de Xcode Command Line Tools
echo -e "${YELLOW}Por favor, completa la instalación de Xcode Command Line Tools si se abre una ventana.${NC}"
echo -e "${YELLOW}Presiona enter cuando la instalación haya terminado.${NC}"
read -p ""

# Instalar Homebrew
echo -e "${GREEN}Instalando Homebrew...${NC}"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Añadir Homebrew al PATH
echo -e "${GREEN}Añadiendo Homebrew al PATH...${NC}"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Instalar Ansible
echo -e "${GREEN}Instalando Ansible...${NC}"
brew install ansible

# Clonar el repositorio de configuración de Ansible (si no existe)
echo -e "${GREEN}Clonando el repositorio de configuración de Ansible...${NC}"
if [ ! -d "$HOME/ansible-mac-setup" ]; then
    git clone https://github.com/tu-usuario/ansible-mac-setup.git "$HOME/ansible-mac-setup"
else
    echo -e "${YELLOW}El directorio ansible-mac-setup ya existe. Omitiendo clonación.${NC}"
fi

# Cambiar al directorio del proyecto
cd "$HOME/ansible-mac-setup"

# Ejecutar el playbook de Ansible
echo -e "${GREEN}Ejecutando el playbook de Ansible...${NC}"
ansible-playbook -i inventory playbook.yml

echo -e "${GREEN}¡Configuración completada!${NC}"
echo -e "${YELLOW}Por favor, reinicia tu terminal o tu Mac para que todos los cambios surtan efecto.${NC}"
