#!/bin/bash

# Função para limpar a tela e exibir o cabeçalho
header() {
    clear
    echo "======================="
    echo "   Linux Update Menu   "
    echo "======================="
    echo
}

# Função para atualizar o sistema Linux
update_system() {
    header
    echo "Atualizando o sistema..."
    echo

    # Comandos de atualização do sistema
    sudo apt update && sudo apt upgrade -y  # Para sistemas baseados em Debian/Ubuntu
    # Adicione outros comandos de atualização para outras distribuições Linux, se necessário

    echo
    echo "Atualização concluída."
    sleep 2  # Tempo de espera após a limpeza (2 segundos neste exemplo)
    show_menu
}

# Função para limpar arquivos temporários
clean_files() {
    header
    echo "Limpando arquivos temporários..."
    echo

    # Comandos para limpar arquivos temporários
    sudo apt clean  # Limpa arquivos temporários em sistemas baseados em Debian/Ubuntu
    # Adicione outros comandos para limpar outros tipos de arquivos temporários, se necessário

    echo
    echo "Limpeza concluída."
    sleep 2  # Tempo de espera após a limpeza (2 segundos neste exemplo)
    show_menu
}

# Função para mostrar o menu
show_menu() {
    header
    echo "Selecione uma opção:"
    echo "1. Atualizar o sistema"
    echo "2. Limpar arquivos temporários"
    echo "3. Sair"

    read -rp "Escolha a opção desejada: " choice
    case $choice in
    1) update_system ;;
    2) clean_files ;;
    3) exit ;;
    *) echo "Opção inválida. Tente novamente." ;;
    esac
}

# Executar o menu
show_menu
