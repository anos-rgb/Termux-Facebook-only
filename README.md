# Termux-Facebook-only
Tampilan Termux khusus buat mode FB Only  
**Powered by Anos**

## Cara Install
```bash
pkg install git -y
git clone https://github.com/anos-rgb/Termux-Facebook-only
cd Termux-Facebook-only
mv .bashrc ~/
termux-reload-settings
```

Catatan Penting

Setelah .bashrc dipakai, tampilan akan terkunci.
Kalau mau lepas (balikin normal):

1. Buka:


```
nano ~/.bashrc
```
2. Cari bagian:


```
disable_commands() {
    allowed_commands=
```
3. Tambahkan rf ke allowed_commands, contoh:


```
allowed_commands=('rf')
```
4. Simpan, lalu jalankan:


```
rm -f ~/.bashrc
```

selamat termux kamu normal kembali 
