#!/bin/bash

echo "Instalando to-com-fome..."

INSTALL_DIR="/usr/local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/CamposGrandson/to-com-fome/main/to-com-fome"

if command -v curl &> /dev/null; then
    sudo curl -L "$SCRIPT_URL" -o "$INSTALL_DIR/to-com-fome"
elif command -v wget &> /dev/null; then
    sudo wget -O "$INSTALL_DIR/to-com-fome" "$SCRIPT_URL"
else
    echo "Precisa de curl ou wget instalado."
    exit 1
fi

sudo chmod +x "$INSTALL_DIR/to-com-fome"

echo "Instalação concluída!"
echo "Digite: to-com-fome"

