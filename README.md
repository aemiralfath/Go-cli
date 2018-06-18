Program Go-cli

Aplikasi go-cli dijalankan dengan 3 cara:
1. dengan tanpa menggunakan parameter
2. dengan menggunakan 3 parameter
3. degan menggunakan nama file sebagai parameter

untuk sementara maka saya menggunakan method overloading (*args) untuk parameternya

progres-1:
1. membuat class dengan nama go_cli yang mempunyai initialize berparameter(*args), attribut accessor :n dan :arr
2. membuat if else statement di dalame method initialize dengan kondisi bila panjang args sama dengan 0 makan masuk kedalam method non_parameter, bila panjang args sama dengan 3 masuk kedalam method parameters, dan selain itu masuk kedalam method files
3. didalam method non_parameter di inisialisasikan n itu 20 dan terbentuklah map dengan array 2d(nxn) dan array dengan nama temp, kemudian saya buat pengulangan untuk driver sebanyak 5 kali dan saya inisialisasikan x dan y dengan nilai random dari 0 sampai ke n.
4. didalam pengulangan untuk driver tersebut ada if dengan kondisi jika array temp terdapat array yg berisikan nilai [x,y], jika true maka akan masuk kedalam else dan akan terjadi pengulangan nilai i, jika false maka masuk kedalam if dan array arr dengan kordinat x dan y diinisialisasikan dengan "d".
5. didalam pengulangan untuk pengguna sistemnya sama seperti pengulangan untuk driver tetapi inisialiasi pada arraynya adalah "p"
6. didalam method parameters n di inisialisasikan dengan args[0] kemudian dilakukan pengulangan untuk menentukan koodinat random para driver (sistemnya sma seperti di method non parameter) dan dinisialisasikan koordinat pengguna dengan args[1] sebagai x dan args[2] sebahai y
7. 
