.model small
.code
org 100h
start:
    jnp mulai
nama    db 13,10, 'Nama anda    :$'
nim     db 13,10, 'Nim anda     :$'
lanjut  db 13,10, 'Continue press y to continue>>>>>>>>>>>>> $'
tampung_name    db 30,?,30 dup?
tampung_nim     db 13,?,13 dup?

a db 01
b db 02
c db 03
d db 04
e db 05
f db 06
j db 15

daftar  db 13,10, '+============================================================+'
        db 13,10, '|              DAFTAR PENJUALAN HEWAN QURBAN 2023            |'
        db 13,10, '|============================================================|'
        db 13,10, '|                   DAFTAR JENIS DAN BOBOT                   |'
        db 13,10, '|============================================================|'
        db 13,10, '| No |   Jenis Hewan Qurban   |    Bobot     | Harga Per Kg  |'     
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 01 | Sapi Limosin           |      1050Kg  |Rp   80.000.000|'
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 02 | Sapi Brahmana          |      640Kg   |Rp   45.000.000|'
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 03 | Sapi Bali              |      480Kg   |Rp   21.000.000|'
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 04 | Kambing Merino         |      78Kg    |Rp    7.000.000|'
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 05 | Kambing Etawa          |      47Kg    |Rp    4.950.000|'
        db 13,10, '|------------------------------------------------------------|'
        db 13,10, '| 06 | Kambing Gembel         |      30Kg    |Rp    2.500.000|'
        db 13,10, '+============================================================+','$'

error       db 13,10, 'The code is wrong $'
pilih_jenis db 13,10, 'Put number/code that you use: $'
success     db 13,10, 'Congratulations you success   $'

        mulai:
        mov ah,09h
        lea dx,nama
        int 21h
        mov ah,0ah
        lea dx,tampung_name
        int 21h
        push dx
        
        mov ah,09h
        lea dx,nama
        int 21h
        mov ah,0ah
        lea dx,tampung_nim
        int 21h
        push dx           
        
        mov ah,09h
        mov dx,offset daftar
        int 21h
        mov ah,09h
        mov dx,offset lanjut
        int 21h 
        mov ah,01h
        int 21h
        cmp al,'y'
        jmp proses
        jne error_msg
        
error_msg:
        mov ah,09h
        mov dx,offset error
        int 21h
        int 20h
        
proses:
        mov ah,09h
        mov dx,offset pilih_jenis
        int 21h
        
        mov ah,1
        int 21h
        mov bh,
        mov ah,1
        int 21h
        mov bl,al
        cmp bh,'0'
        cmp bl,'1'
        je hasil1
        
        cmp bh,'0'
        cmp bl,'2'
        je hasil2
        
        cmp bh,'0'
        cmp bl,'3'
        je hasil3
        
        cmp bh,'0'
        cmp bl,'4'
        je hasil4
         
        cmp bh,'0'
        cmp bl,'5'
        je hasil5
        
        cmp bh,'0'
        cmp bl,'6'
        je hasil6
                   
                   
;-----------------------------------------------------

hasil1:
    mov ah,09h
    lea dx,teks1
    int 21h
    int 20h   

hasil2:
    mov ah,09h
    lea dx,teks2
    int 21h
    int 20h   

hasil3:
    mov ah,09h
    lea dx,teks3
    int 21h
    int 20h   

hasil4:
    mov ah,09h
    lea dx,teks4
    int 21h
    int 20h   
    
hasil5:
    mov ah,09h
    lea dx,teks5
    int 21h
    int 20h   
    
hasil6:
    mov ah,09h
    lea dx,teks6
    int 21h
    int 20h  

;-----------------------------------------------------

teks1   db 13,10, 'Anda Memilih Sapi Limosin'
        db 13,10, 'Dengan Bobot 1050 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 80.000.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami'
        
teks2   db 13,10, 'Anda Memilih Sapi Brahmana'
        db 13,10, 'Dengan Bobot 640 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 45.000.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami'     
        
teks3   db 13,10, 'Anda Memilih Sapi Bali'
        db 13,10, 'Dengan Bobot 480 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 21.000.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami'
        
teks4   db 13,10, 'Anda Memilih Kambing Melino'
        db 13,10, 'Dengan Bobot 78 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 7.000.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami'   
                
teks5   db 13,10, 'Anda Memilih Kambing Etawa'
        db 13,10, 'Dengan Bobot 47 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 4.950.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami' 
                
teks6   db 13,10, 'Anda Memilih Kambing Gembel'
        db 13,10, 'Dengan Bobot 30 Kg'
        db 13,10, 'Total biaya yang harus anda bayar :Rp. 2.500.000'
        db 13,10, 'Terima Kasih Telah Membeli Dikami' 

end start                                            