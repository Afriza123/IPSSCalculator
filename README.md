# IPSSCalculator

Aplikasi penghitung Internasional Prostate Symptom Score (IPSS) dengan kuesioner yang sudah diterjemahkan dalam bahasa Indonesia.

Kuisioner memuat 7 pertanyaan berupa :
1. Seberapa sering Anda merasa masih ada sisa selesai kencing?
2. Seberapa sering Anda harus kembali kencing dalam waktu kurang dari 2 jam setelah selesai kencing?
3. Seberapa sering Anda mendapatkan bahwa Anda kencing terputus-putus?
4. Seberapa sering Anda sulit untuk menunda kencing?
5. Seberapa sering pancaran kencing Anda lemah?
6. Seberapa sering Anda harus mengejan untuk memulai kencing?
7. Seberapa sering Anda harus bangun untuk kencing, sejak mulai tidur pada malam hari hingga bangun di pagi hari?

Setiap pertanyaan memiliki 6 pilihan jawaban yang akan memberikan nilai 0-5 pada variabel setiap pertanyaan
Aplikasi ini menggunakan 9 variabel yakni 
var sisa --> Pertanyaan nomor 1
var ulang --> Pertanyaan nomor 2
var putus --> Pertanyaan nomor 3
var nunda --> Pertanyaan nomor 4
var lemah --> Pertanyaan nomor 5
var mengejan --> Pertanyaan nomor 6
var bangun --> Pertanyaan nomor 7
var total --> Jumlah nilai variabel pertanyaan 1-7
var nilaiparah --> Teks menentukan keparahan berdasarkan variabel total

Variabel nilaiparah terbagi menjadi 3 hasil akhir berupa
Gejala ringan --> 0-7
Gejala sedang --> 8-19
Gejala berat --> >19

Penetapan klasifikasi gejala tersebut diambil dari artikel penelitian Rusliyawati et al. (2021).



Sumber pustaka :

Rusliyawati, Muludi, K., Wantoro, A., Saputra, D.A. 2021. Implementasi Metode International Prostate Symptom Score (IPSS) untuk E-Screening Penentuan Gejala Benign Prostate Hyperplasia (BPH). Jurnal Sains dan Informatika, 7(1), hal : 28-37. DOI: 10.34128/jsi.v7i1.298
