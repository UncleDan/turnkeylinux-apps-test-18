#!/bin/bash

# Definizione colori e icone
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Icone
ICON_OK="✅"
ICON_ERROR="❌"
ICON_WARN="⚠️"
ICON_INFO="ℹ️"
ICON_FOLDER="📁"
ICON_TRASH="🗑️"
ICON_SEARCH="🔍"
ICON_FILE="📄"

# Funzione per stampare messaggi formattati
print_message() {
    local type=$1
    local message=$2
    case $type in
        "success") echo -e "${GREEN}${ICON_OK} ${message}${NC}" ;;
        "error") echo -e "${RED}${ICON_ERROR} ${message}${NC}" ;;
        "warning") echo -e "${YELLOW}${ICON_WARN} ${message}${NC}" ;;
        "info") echo -e "${BLUE}${ICON_INFO} ${message}${NC}" ;;
        "folder") echo -e "${CYAN}${ICON_FOLDER} ${message}${NC}" ;;
        "delete") echo -e "${PURPLE}${ICON_TRASH} ${message}${NC}" ;;
        "file") echo -e "${PURPLE}${ICON_FILE} ${message}${NC}" ;;
    esac
}

# Intestazione colorata
clear
echo -e "${CYAN}╔══════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║           SCRIPT DI PULIZIA              ║${NC}"
echo -e "${CYAN}║     ${ICON_TRASH} Cancellazione File e Cartelle ${ICON_TRASH}    ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════╝${NC}"
echo ""

# Si posiziona nella directory /root
print_message "info" "Accesso alla directory /root..."
cd /root || {
    print_message "error" "Impossibile accedere a /root"
    exit 1
}
print_message "success" "Directory /root raggiunta con successo"
echo ""

# SEZIONE MYBUILDS
print_message "info" "${ICON_SEARCH} Verifica cartella mybuilds..."
if [ -d "mybuilds" ]; then
    print_message "folder" "Cartella mybuilds trovata"

    # Conta i file prima della cancellazione
    file_count=$(find mybuilds -type f | wc -l)
    if [ $file_count -gt 0 ]; then
        print_message "warning" "Trovati $file_count file da cancellare in mybuilds/"
        print_message "delete" "Cancellazione file in corso..."

        # Mostra e cancella tutti i file nella cartella mybuilds
        find mybuilds -type f -print | while read -r file; do
            if [ -n "$file" ]; then
                print_message "file" "Cancellazione in corso: $file"
                rm -f "$file"
            fi
        done

        # Verifica il risultato
        remaining_files=$(find mybuilds -type f | wc -l)
        if [ $remaining_files -eq 0 ]; then
            print_message "success" "Tutti i file in mybuilds cancellati con successo"
        else
            print_message "warning" "$remaining_files file potrebbero non essere stati cancellati"
        fi
    else
        print_message "info" "Nessun file trovato in mybuilds"
    fi
else
    print_message "warning" "La cartella mybuilds non esiste"
fi
echo ""

# SEZIONE TURNKEY
print_message "info" "${ICON_SEARCH} Ricerca cartelle che iniziano con 'turnkey-'..."
turnkey_dirs=$(find . -maxdepth 1 -type d -name "turnkey-*")

if [ -n "$turnkey_dirs" ]; then
    dir_count=$(echo "$turnkey_dirs" | wc -l)
    print_message "folder" "Trovate $dir_count cartelle che iniziano con 'turnkey-':"

    # Mostra l'elenco delle cartelle trovate
    while IFS= read -r dir; do
        if [ -n "$dir" ]; then
            echo -e "  ${YELLOW}📂 ${dir#./}${NC}"
        fi
    done <<< "$turnkey_dirs"

    echo ""
    print_message "warning" "Queste cartelle verranno eliminate permanentemente!"
    echo -e "${YELLOW}${ICON_WARN} ATTENZIONE: Questa operazione è IRREVERSIBILE ${ICON_WARN}${NC}"
    echo ""

    # Conferma (opzionale - rimuovi i commenti se vuoi la conferma)
    # read -p "Procedere con la cancellazione? (y/N): " confirm
    # if [[ $confirm =~ ^[Yy]$ ]]; then

    print_message "delete" "Cancellazione cartelle in corso..."
    echo ""

    # Mostra e cancella ricorsivamente tutte le cartelle turnkey-*
    find . -maxdepth 1 -type d -name "turnkey-*" -print | while read -r dir; do
        if [ -n "$dir" ]; then
            print_message "folder" "Cancellando: $dir"
            rm -rf "$dir"
        fi
    done

    # Verifica il risultato
    remaining_dirs=$(find . -maxdepth 1 -type d -name "turnkey-*" 2>/dev/null)
    echo ""
    if [ -z "$remaining_dirs" ]; then
        print_message "success" "Tutte le cartelle turnkey-* cancellate con successo"
    else
        print_message "error" "Alcune cartelle potrebbero non essere state cancellate"
    fi
    # else
    #     print_message "info" "Operazione annullata dall'utente"
    # fi
else
    print_message "info" "Nessuna cartella che inizia con 'turnkey-' trovata"
fi

echo ""
echo -e "${GREEN}╔══════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║        ${ICON_OK} OPERAZIONE COMPLETATA ${ICON_OK}       ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════╝${NC}"