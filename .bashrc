RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
RESET='\033[0m'
BLINK='\033[5m'
BLACK='\033[0;30m'
ORANGE='\033[38;5;208m'
PURPLE='\033[38;5;129m'
BOLD='\033[1m'
DIM='\033[2m'
UNDERLINE='\033[4m'

# Logo ANOS dengan ASCII Art
show_anos_logo() {
    echo -e "${PURPLE}${BOLD}"
    echo "    █████╗ ███╗   ██╗ ██████╗ ███████╗"
    echo "   ██╔══██╗████╗  ██║██╔═══██╗██╔════╝"
    echo "   ███████║██╔██╗ ██║██║   ██║███████╗"
    echo "   ██╔══██║██║╚██╗██║██║   ██║╚════██║"
    echo "   ██║  ██║██║ ╚████║╚██████╔╝███████║"
    echo "   ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝"
    echo -e "${RESET}"
}

# Fungsi untuk membuka Facebook dengan animasi lebih keren
fesnuk() {
    clear
    echo -e "${BLUE}${BOLD}"
    echo " ███████╗ █████╗  ██████╗███████╗██████╗  ██████╗  ██████╗ ██╗  ██╗"
    echo " ██╔════╝██╔══██╗██╔════╝██╔════╝██╔══██╗██╔═══██╗██╔═══██╗██║ ██╔╝"
    echo " █████╗  ███████║██║     █████╗  ██████╔╝██║   ██║██║   ██║█████╔╝ "
    echo " ██╔══╝  ██╔══██║██║     ██╔══╝  ██╔══██╗██║   ██║██║   ██║██╔═██╗ "
    echo " ██║     ██║  ██║╚██████╗███████╗██████╔╝╚██████╔╝╚██████╔╝██║  ██╗"
    echo " ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝"
    echo -e "${RESET}"
    
    echo -e "${YELLOW}${BOLD}Menghubungkan ke Facebook...${RESET}"
    
    # Animasi loading yang lebih menarik
    echo -e "${CYAN}"
    for i in {1..25}; do
        for j in $(seq 1 $i); do echo -ne "▓"; done
        for j in $(seq $i 25); do echo -ne "░"; done
        percent=$((i*4))
        echo -ne " ${percent}% ${RESET}\r"
        sleep 0.08
    done
    echo -e "\n${RESET}"
    
    # Efek "connecting" yang lebih interaktif
    echo -e "${GREEN}${BOLD}[+] Memverifikasi koneksi...${RESET}"
    sleep 0.5
    echo -e "${GREEN}${BOLD}[+] Mengautentikasi...${RESET}"
    sleep 0.7
    echo -e "${GREEN}${BOLD}[+] Membuka sesi baru...${RESET}"
    sleep 0.5
    
    # Buka Facebook
    if command -v termux-open-url &> /dev/null; then
        termux-open-url "https://www.facebook.com"
    else
        echo -e "${RED}${BOLD}[!] Error: termux-open-url tidak tersedia.${RESET}"
        echo -e "${YELLOW}Buka Facebook secara manual di browser anda.${RESET}"
    fi
    
    echo -e "\n${CYAN}${BOLD}[✓] ${GREEN}Berhasil membuka Facebook!${RESET}\n"
    echo -e "${DIM}Powered by anos™${RESET}\n"
}

# Fungsi bantuan dengan tampilan lebih interaktif
bantuan() {
    clear
    echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════╗${RESET}"
    echo -e "${CYAN}${BOLD}║            PANDUAN PERINTAH                  "
    echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════╝${RESET}\n"
    
    echo -e "  ${WHITE}${BOLD}PERINTAH${RESET}          ${YELLOW}${BOLD}DESKRIPSI${RESET}"
    echo -e "  ${WHITE}${BOLD}───────${RESET}          ${YELLOW}${BOLD}──────────${RESET}\n"
    
    echo -e "  ${GREEN}${BOLD}fesnuk${RESET}           Membuka aplikasi Facebook"
    echo -e "  ${GREEN}${BOLD}bantuan${RESET}          Menampilkan panduan ini"
    echo -e "  ${GREEN}${BOLD}clear${RESET}            Membersihkan layar terminal"
    echo -e "  ${GREEN}${BOLD}exit${RESET}             Keluar dari Termux"
    echo -e "  ${GREEN}${BOLD}anos${RESET}             Informasi developer\n"
    
    echo -e "${ORANGE}${BOLD}[!] CATATAN:${WHITE} Seluruh perintah lain telah dinonaktifkan.${RESET}\n"
    echo -e "${DIM}Developed by anos${RESET}\n"
}

# Informasi tentang developer
anos() {
    clear
    show_anos_logo
    echo -e "${WHITE}${BOLD}════════════════════════════════════════════════════${RESET}"
    echo -e "${YELLOW}${BOLD}          DEVELOPED BY ANOS${RESET}"
    echo -e "${WHITE}${BOLD}════════════════════════════════════════════════════${RESET}\n"
    
    echo -e "${CYAN}${BOLD}[DEV INFO]${RESET}"
    echo -e "${WHITE}Developer   : ${GREEN}anos${RESET}"
    echo -e "${WHITE}Version     : ${GREEN}2.5.7 Premium${RESET}"
    echo -e "${WHITE}Build Date  : ${GREEN}10 April 2025${RESET}"
    echo -e "${WHITE}Platform    : ${GREEN}Termux Restricted${RESET}"
    echo -e "${WHITE}License     : ${GREEN}public${RESET}\n"
    
    echo -e "${MAGENTA}${BOLD}[CONTACT]${RESET}"
    echo -e "${WHITE}GitHub      : ${BLUE}${UNDERLINE}github.com/anos-rgb${RESET}"
    echo -e "${WHITE}Instagram   : ${BLUE}${UNDERLINE}@anospemula${RESET}\n"
    
    echo -e "${RED}${BOLD}[DISCLAIMER]${RESET}"
    echo -e "${WHITE}${DIM}Aplikasi ini hanya memungkinkan akses ke Facebook..${RESET}\n"
    
    echo -e "${GREEN}Tekan Enter untuk kembali...${RESET}"
    read
    clear
}

# Fungsi untuk animasi startup yang lebih keren
startup_animation() {
    clear
    echo -e "${YELLOW}${BOLD}"
    echo "Memulai sistem..."
    echo -e "${RESET}"
    
    echo -e "${CYAN}"
    for i in {1..30}; do
        echo -ne "█"
        sleep 0.02
    done
    echo -e "${RESET}\n"
    
    echo -e "${GREEN}[✓] loading bentar${RESET}"
    sleep 0.3
    echo -e "${GREEN}[✓] Mengaktifkan pembatasan akses...${RESET}"
    sleep 0.3
    echo -e "${GREEN}[✓] Menginisialisasi platform Facebook...${RESET}"
    sleep 0.3
    echo -e "${GREEN}[✓] dibuat oleh anos...${RESET}"
    sleep 0.5
    
    clear
}

# Clear semua command yang ada
clear

# Jalankan animasi startup
startup_animation

# Pesan welcome dengan tampilan super keren
echo -e "${BLUE}${BOLD}"
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           "
echo -e "║  ${RED}${BLINK}██████╗ ███████╗███████╗████████╗██████╗ ██╗ ██████╗${RESET}${BLUE}${BOLD}  "
echo -e "║  ${RED}${BLINK}██╔══██╗██╔════╝██╔════╝╚══██╔══╝██╔══██╗██║██╔════╝${RESET}${BLUE}${BOLD}  "
echo -e "║  ${RED}${BLINK}██████╔╝█████╗  ███████╗   ██║   ██████╔╝██║██║     ${RESET}${BLUE}${BOLD}  "
echo -e "║  ${RED}${BLINK}██╔══██╗██╔══╝  ╚════██║   ██║   ██╔══██╗██║██║     ${RESET}${BLUE}${BOLD}  "
echo -e "║  ${RED}${BLINK}██║  ██║███████╗███████║   ██║   ██║  ██║██║╚██████╗${RESET}${BLUE}${BOLD}  "
echo -e "║  ${RED}${BLINK}╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝ ╚═════╝${RESET}${BLUE}${BOLD}  "
echo "║                                                           "
echo -e "║  ${WHITE}${BOLD}TERMUX MODE: ${ORANGE}FACEBOOK ACCESS ONLY  ${GREEN}v2.5.7${RESET}${BLUE}${BOLD}           "
echo -e "║  ${WHITE}${BOLD}DEVELOPED BY: ${PURPLE}ANOS${RESET}${BLUE}${BOLD}                                 "
echo "║                                                           "
echo "╚═══════════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# Tambahkan typing effect untuk pesan intro
type_text() {
    text=$1
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.02
    done
    echo ""
}

echo -e "${YELLOW}Sistem pembatasan aktif. Hanya Facebook yang dapat diakses.${RESET}"
echo -e "${GREEN}Ketik '${CYAN}bantuan${GREEN}' untuk melihat perintah yang tersedia.${RESET}"
echo ""

# Set prompt yang lebih menarik dan profesional
PS1="\n${RED}┌─[${YELLOW}ANOS${RED}]─[${MAGENTA}TERMUX${RED}]─[${CYAN}\w${RED}]\n${RED}└──╼ ${ORANGE}FB${GREEN}❯${RESET} "

# Disable sebagian besar command dengan pesan yang lebih interaktif
disable_commands() {
    # List command yang diizinkan
    allowed_commands=('fesnuk' 'exit' 'clear' 'bantuan' 'anos' 'nano' 'echo' 'ubah ini menjadi rm' 'alias' 'trap' 'termux-open-url' 'for' 'do' 'done' 'sleep' 'then' 'else' 'fi' 'builtin')
    
    # Backup PATH
    PATH_BACKUP=$PATH
    
    for cmd in $(compgen -c); do
        if [[ ! " ${allowed_commands[@]} " =~ " ${cmd} " ]]; then
            alias $cmd="echo -e '${RED}[${BLINK}!${RESET}${RED}] AKSES DITOLAK!${RESET} ${YELLOW}Perintah \"$cmd\" diblokir oleh sistem.${RESET}\n${CYAN}Info: ${WHITE}Hanya akses Facebook yang diizinkan dalam mode ini.\n${GREEN}Ketik ${CYAN}bantuan${GREEN} untuk melihat perintah yang tersedia.${RESET}'"
        fi
    done
}

# Override cd function dengan pesan error yang lebih keren
cd() {
    echo -e "${RED}[${BLINK}!${RESET}${RED}] AKSES DITOLAK!${RESET} ${YELLOW}Navigasi folder dibatasi!${RESET}"
    echo -e "${ORANGE}[INFO]${RESET} ${WHITE}Sistem anos hanya mengizinkan akses ke Facebook.${RESET}"
    echo -e "${ORANGE}[TIP]${RESET} ${WHITE}Ketik ${CYAN}fesnuk${WHITE} untuk membuka Facebook.${RESET}"
}

# Override ls dengan pesan error yang menarik
ls() {
    echo -e "${RED}[${BLINK}!${RESET}${RED}] AKSES DITOLAK!${RESET} ${YELLOW}Melihat isi direktori tidak diizinkan!${RESET}"
    echo -e "${ORANGE}[KEAMANAN]${RESET} ${WHITE}Fitur ini dinonaktifkan oleh sistem anos.${RESET}"
}

# Jalankan pembatasan command dengan error handling
disable_commands || echo -e "${RED}[!] Error saat memuat pembatasan command.${RESET}"

# Tambahkan trap agar Ctrl+C menampilkan pesan yang lebih keren
trap 'echo -e "\n${RED}[${BLINK}!${RESET}${RED}] PERINGATAN:${RESET} ${YELLOW}Kombinasi tombol Ctrl+C diblokir!${RESET}\n${WHITE}Gunakan perintah ${GREEN}exit${WHITE} untuk keluar dari Termux Restricted.${RESET}\n${DIM}Powered by anos security™${RESET}"' SIGINT

# Alias bantuan
alias bantuan=bantuan
alias anos=anos
alias e=exit

# Ubah fungsi exit menjadi lebih menarik
exit_function() {
    clear
    echo -e "${RED}${BOLD}"
    echo "Menutup Termux Restricted..."
    echo -e "${RESET}"
    
    echo -e "${CYAN}"
    for i in {1..20}; do
        echo -ne "█"
        sleep 0.05
    done
    echo -e "${RESET}\n"
    
    echo -e "${GREEN}[✓] Mematikan layanan...${RESET}"
    sleep 0.3
    
    echo -e "\n${PURPLE}${BOLD}Terima kasih telah menggunakan TERMUX RESTRICTED${RESET}"
    echo -e "${DIM}Developed by años © 2025${RESET}\n"
    
    sleep 1
    builtin exit
}

alias exit=exit_function
