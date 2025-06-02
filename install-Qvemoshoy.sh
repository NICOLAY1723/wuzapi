#!/bin/bash

YELLOW='\033[1;33m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
BOLD='\033[1m'
NC='\033[0m' 
RED='\033[1;31m'

echo ""
echo -e "${CYAN}${BOLD}═══════════════════════════════════════════════════"
echo -e "${GREEN}         ¡Bienvenido a ${BOLD}¡Qvemos hoy?${NC}${GREEN} 🚀"
echo -e "${CYAN}═══════════════════════════════════════════════════"

echo -e "${YELLOW}${BOLD}🔄 ESTE PROCESO TARDARA DE 15 A 20 MINUTOS. 🔄${NC}"
echo ""

echo -e "${CYAN}🌐 Mi whatsapp ${BOLD}+591 63612714${NC}"
echo -e "${CYAN}▶️ Somos distribuidores: ${BOLD}de servicios streaming${NC}"
echo -e "${CYAN}🎵 Nuestras apps    ${BOLD}Netflix, Disney vendemos chatgpt seguidores y toda aplicacion que puedes imaginar${NC}"
echo ""

echo -e "${CYAN}═══════════════════════════════════════════════════${NC}"
echo -e "${RED}${BOLD}⚠️ Cualquier cambio o modificacion se anula la garantia, cuide su Dinero ⚠️${NC}"
echo ""

# Instalar Git y Go
echo "Instalando Git y Go..."
echo ""
pkg install -y git golang &>/dev/null
echo "Git y Go se han instalado correctamente."
echo ""

# Clonar el repositorio de WuzAPI
echo "Clonando el repositorio de ¿Qvemos hoy?..."
echo ""
git clone https://github.com/NICOLAY1723/wuzapi.git &>/dev/null
echo "Repositorio clonado con éxito."
echo ""

# Navegar al directorio del proyecto
cd wuzapi

# Compilar el binario de WuzAPI con el nombre por defecto
echo "Compilando el binario..."
echo ""
go build .&>/dev/null

# Verificar que el binario se haya compilado correctamente
if [ -f "./wuzapi" ]; then
    echo "¿Qvemos hoy? se ha compilado correctamente en Termux."
    
    # Dar permisos de ejecución al binario
    chmod +x wuzapi
    chmod +x ejecutar_wuzapi.sh

    echo "Permisos de ejecución otorgados a ¿Qvemos hoy?."
    echo ""
else
    echo "Error al compilar ¿Qvemos hoy?."
    echo ""
    exit 1
fi
#concediendo permisos a tasker
mkdir -p ~/.termux && echo "allow-external-apps=true" >> ~/.termux/termux.properties

# Ejecutar WuzAPI
echo "Ejecutando ¿Qvemos hoy?..."
echo ""
./wuzapi
