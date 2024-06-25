Feature: Fill google form

  @Google @FillForm
  Scenario Outline: Fill google form with responden name '<name>'
    Given user open chrome browser with url https://forms.gle/Ni7SbukpxPXaGvMn9
    And user click berikutnya button
#   Form page 1
    And user fills the form based on given data:
      | name          | <name>          |
      | gender        | <gender>        |
      | umur          | <umur>          |
      | pendidikan    | <pendidikan>    |
      | pemasukan     | <pemasukan>     |
      | domisili      | <domisili>      |
      | pernahBelanja | <pernahBelanja> |
      | eCommerce     | <eCommerce>     |
      | seringBelanja | <seringBelanja> |
      | pengeluaran   | <pengeluaran>   |
      | promo-1       | <promo-1>       |
      | promo-2       | <promo-2>       |
      | promo-3       | <promo-3>       |
      | promo-4       | <promo-4>       |
      | promo-5       | <promo-5>       |
      | promo-6       | <promo-6>       |
      | promo-7       | <promo-7>       |
      | promo-8       | <promo-8>       |
      | price-1       | <price-1>       |
      | price-2       | <price-2>       |
      | price-3       | <price-3>       |
      | price-4       | <price-4>       |
      | price-5       | <price-5>       |
      | product-1     | <product-1>     |
      | product-2     | <product-2>     |
      | product-3     | <product-3>     |
      | product-4     | <product-4>     |
      | product-5     | <product-5>     |
      | product-6     | <product-6>     |
      | product-7     | <product-7>     |
      | product-8     | <product-8>     |
      | product-9     | <product-9>     |
      | product-10    | <product-10>    |
      | product-11    | <product-11>    |
      | product-12    | <product-12>    |
      | product-13    | <product-13>    |
      | live-1        | <live-1>        |
      | live-2        | <live-2>        |
      | live-3        | <live-3>        |
      | live-4        | <live-4>        |
      | live-5        | <live-5>        |
      | live-6        | <live-6>        |
      | live-7        | <live-7>        |
      | live-8        | <live-8>        |
      | live-9        | <live-9>        |
      | live-10       | <live-10>       |
      | live-11       | <live-11>       |
      | buy-1         | <buy-1>         |
      | buy-2         | <buy-2>         |
      | buy-3         | <buy-3>         |
      | buy-4         | <buy-4>         |
      | buy-5         | <buy-5>         |
      | buy-6         | <buy-6>         |
      | buy-7         | <buy-7>         |
      | buy-8         | <buy-8>         |
    Examples:
      | name          | gender | pendidikan | pemasukan | umur | domisili | pernahBelanja | eCommerce | seringBelanja | pengeluaran | promo-1 | promo-2 | promo-3 | promo-4 | promo-5 | promo-6 | promo-7 | promo-8 | price-1 | price-2 | price-3 | price-4 | price-5 | product-1 | product-2 | product-3 | product-4 | product-5 | product-6 | product-7 | product-8 | product-9 | product-10 | product-11 | product-12 | product-13 | live-1 | live-2 | live-3 | live-4 | live-5 | live-6 | live-7 | live-8 | live-9 | live-10 | live-11 | buy-1 | buy-2 | buy-3 | buy-4 | buy-5 | buy-6 | buy-7 | buy-8 |
      | Alfina Andika | 1      | 4          | 3         | 2    | 1        | 1             | 1;2;3;5   | 1             | 2           | 3       | 4       | 4       | 4       | 4       | 4       | 3       | 5       | 5       | 4       | 4       | 5       | 4       | 4         | 4         | 5         | 4         | 3         | 4         | 4         | 3         | 3         | 4          | 4          | 5          | 3          | 4      | 3      | 4      | 4      | 5      | 4      | 3      | 4      | 4      | 3       | 5       | 5     | 4     | 5     | 4     | 4     | 3     | 4     | 3     |
      | David Wijaya  | 1      | 2          | 3         | 2    | 1        | 1             | 1;2;3     | 1             | 1           | 4       | 3       | 4       | 4       | 3       | 4       | 5       | 5       | 3       | 3       | 4       | 4       | 4       | 4         | 5         | 5         | 4         | 5         | 5         | 3         | 3         | 4         | 4          | 4          | 4          | 5          | 5      | 4      | 4      | 5      | 5      | 4      | 5      | 5      | 3      | 4       | 4       | 5     | 5     | 4     | 4     | 3     | 4     | 4     | 5     |
      | Andi Sutomo   | 1      | 2          | 3         | 2    | 1        | 1             | 1         | 1             | 1           | 4       | 5       | 4       | 4       | 5       | 4       | 4       | 4       | 5       | 5       | 4       | 4       | 4       | 4         | 4         | 4         | 4         | 4         | 4         | 5         | 5         | 4         | 4          | 4          | 4          | 4          | 4      | 4      | 4      | 4      | 4      | 4      | 4      | 4      | 5      | 4       | 4       | 4     | 4     | 4     | 4     | 5     | 4     | 4     | 4     |
      | Tiffani       | 2      | 1          | 3         | 2    | 1        | 1             | 1;2;3     | 2             | 1           | 5       | 2       | 5       | 5       | 2       | 5       | 5       | 3       | 2       | 2       | 5       | 5       | 5       | 5         | 5         | 3         | 5         | 5         | 3         | 2         | 2         | 5         | 5          | 5          | 5          | 5          | 3      | 5      | 5      | 5      | 3      | 5      | 5      | 3      | 2      | 5       | 5       | 5     | 3     | 5     | 5     | 2     | 5     | 5     | 5     |
      | Marliana      | 2      | 1          | 3         | 2    | 1        | 1             | 1         | 1             | 2           | 4       | 5       | 4       | 4       | 5       | 4       | 3       | 5       | 5       | 5       | 4       | 4       | 4       | 4         | 3         | 5         | 4         | 3         | 5         | 5         | 5         | 4         | 4          | 4          | 4          | 3          | 5      | 4      | 4      | 3      | 5      | 4      | 3      | 5      | 5      | 4       | 4       | 3     | 5     | 4     | 4     | 5     | 4     | 4     | 3     |
      | Sinta         | 2      | 1          | 2         | 2    | 1        | 1             | 1;2;3     | 2             | 2           | 3       | 4       | 5       | 3       | 4       | 5       | 5       | 4       | 4       | 4       | 5       | 3       | 5       | 3         | 5         | 4         | 5         | 5         | 4         | 4         | 4         | 5         | 3          | 5          | 3          | 5          | 4      | 5      | 3      | 5      | 4      | 5      | 5      | 4      | 4      | 5       | 3       | 5     | 4     | 5     | 3     | 4     | 5     | 3     | 5     |
      | Brandon lee   | 1      | 1          | 3         | 2    | 1        | 1             | 1;3       | 2             | 2           | 2       | 4       | 5       | 2       | 4       | 5       | 4       | 4       | 4       | 4       | 5       | 2       | 5       | 2         | 4         | 4         | 5         | 4         | 4         | 4         | 4         | 5         | 2          | 5          | 2          | 4          | 4      | 5      | 2      | 4      | 4      | 5      | 4      | 4      | 4      | 5       | 2       | 4     | 4     | 5     | 2     | 4     | 5     | 2     | 4     |
      | Andrew        | 1      | 1          | 2         | 2    | 1        | 1             | 1;2       | 1             | 1           | 3       | 4       | 3       | 3       | 4       | 3       | 5       | 5       | 4       | 4       | 3       | 3       | 3       | 3         | 5         | 5         | 3         | 5         | 5         | 4         | 4         | 3         | 3          | 3          | 3          | 5          | 5      | 3      | 3      | 5      | 5      | 3      | 5      | 5      | 4      | 3       | 3       | 5     | 5     | 3     | 3     | 4     | 3     | 3     | 5     |
      | Nabilla       | 2      | 3          | 2         | 2    | 1        | 1             | 1         | 1             | 1           | 4       | 5       | 2       | 4       | 5       | 2       | 4       | 2       | 5       | 5       | 2       | 4       | 2       | 4         | 4         | 2         | 2         | 4         | 2         | 5         | 5         | 2         | 4          | 2          | 4          | 4          | 2      | 2      | 4      | 4      | 2      | 2      | 4      | 2      | 5      | 2       | 4       | 4     | 2     | 2     | 4     | 5     | 2     | 4     | 4     |
      | Dennis tan    | 1      | 1          | 2         | 2    | 1        | 1             | 1;3       | 2             | 2           | 5       | 4       | 3       | 5       | 4       | 3       | 4       | 5       | 4       | 4       | 3       | 5       | 3       | 5         | 4         | 5         | 3         | 4         | 5         | 4         | 4         | 3         | 5          | 3          | 5          | 4          | 5      | 3      | 5      | 4      | 5      | 3      | 4      | 5      | 4      | 3       | 5       | 4     | 5     | 3     | 5     | 4     | 3     | 5     | 4     |
      | Darwin        | 1      | 4          | 3         | 2    | 1        | 1             | 1;2       | 2             | 1           | 4       | 5       | 4       | 4       | 5       | 4       | 4       | 4       | 5       | 5       | 4       | 4       | 4       | 4         | 4         | 4         | 4         | 4         | 4         | 5         | 5         | 4         | 4          | 4          | 4          | 4          | 4      | 4      | 4      | 4      | 4      | 4      | 4      | 4      | 5      | 4       | 4       | 4     | 4     | 4     | 4     | 5     | 4     | 4     | 4     |

    #list form level 1
      #Gender 1-2
      #umur 1-3 (harus 2 biar ke form level 2)
      #pendidikan 1-6
      #pemasukan 1-4
    #list form level 2
      #domisili 1-2 (harus 1 biar ke form level 3)
    #list form level 3
      #pernahBelanja 1-2 (harus 1 biar ke form level 4)
      #eCommerce (1-6)
      #seringBelanja
      #pengeluaranex
    #list form level 4 (promotion survei)
      #promo-1 : Saya tertarik untuk membeli suatu produk dari e-commerce karena  iklan dari berbagai media.
      #promo-2 : Saya tertarik untuk membeli suatu produk dari e-commerce karena konten promosi dari berbagai media.
      #promo-3 : Saya tertarik untuk membeli suatu produk di e-commerce jika ditawarkan secara langsung oleh seller.
      #promo-4 : Saya tertarik untuk membeli produk dengan berbagai pilihan berbeda yang ditawarkan secara langsung.
      #promo-5 : Saya tertarik untuk membeli suatu produk di e-commerce karena promo yang diberikan.
      #promo-6 : Saya tertarik untuk membeli suatu produk di e-commerce karena adanya bonus merchandise yang diberikan.
      #promo-7 : Saya tertarik untuk membeli suatu produk di e-commerce karena informasi diberikan secara langsung  oleh penjual.
      #promo-8 : Saya tertarik untuk membeli suatu produk di e-commerce karena menonton live streaming produk.
    #list form level 5 (competitive price survei)
        #price-1 : Saya akan membayar lebih untuk mendapatkan kualitas produk yang lebih bagus.
        #price-2 : Saya selalu membandingkan harga antar penjual di e-commerce sebelum membeli suatu produk .
        #price-3 : Saya membandingkan harga pada e-commerce berbeda sebelum membeli suatu produk.
        #price-4 : Saya akan membeli produk di e-commerce karena harganya lebih murah.
        #price-5 : Saya akan membeli produk di e-commerce karena harganya terjangkau.
    #list form level 6 (product quality survei)
      #product-1 : Saya merasa lebih nyaman berbelanja di e-commerce.
      #product-2 : Saya merasa berbelanja di e-commerce lebih aman.
      #product-3 : Saya dapat berbelanja di e-commerce dengan mudah.
      #product-4 : Saya senang berbelanja di e-commerce karena fitur yang diberikan.
      #product-5 : Saya percaya produk yang di jual di e-commerce sesuai dengan spesifikasi yang di tawarkan.
      #product-6 : Saya merasa produk yang kita terima sesuai dengan gambar pada e-commerce.
      #product-7 : Saya merasa service yang di berikan oleh e-commerce sudah sangat baik.
      #product-8 : Saya dapat mengembalikan barang di e-commerce jika barang yang diterima tidak sesuai dengan yang di janjikan.
      #product-9 : Saya jarang menerima produk yang rusak ketika berbelanja di e-commerce.
      #product-10 : Saya menerima produk dengan kualitas terjamin pada e-commerce.
      #product-11 : Saya merasa desain dari produk di e-commerce sangat menarik.
      #product-12 : Saya merasa warna dari tampilan produk e-commerce sangat menarik.
      #product-13 : Saya akan membeli produk di e-commerce setelah melihat review dari konsumen sebelumnya.
    #list form level 7 (live streaming survei)
      #live-1 : Saya ingin membeli produk e-commerce karena tertarik dengan host pada live streaming shopping.
      #live-2 : Saya ingin membeli produk e-commerce karena host dapat membangun suasana pada live streaming shopping
      #live-3 : Saya ingin membeli produk e-commerce karena percaya dengan informasi yang di berikan oleh host.
      #live-4 : Saya ingin membeli produk e-commere karena detail produk yang diberikan oleh host.
      #live-5 : Saya ingin membeli produk e-commere karena keuntungan yang di janjikan oleh host.
      #live-6 : Saya merasa host pada live shopping sangat fasih memperkenalkan produknya.
      #live-7 : Saya merasa host pada live shopping sangat fasih dalam menjelaskan detail dari produk.
      #live-8 : Saya merasa host pada live shopping dapat menjelaskan secara rinci keunggulan produkya.
      #live-9 : Saya merasa host pada online shopping di e-commerce sangat ramah.
      #live-10 : Saya merasa host pada online shopping di e-commerce  menjawab pertanyaan konsumen.
      #live-11 : Saya merasa host pada online shopping di e-commerce memiliki komunikasi baik dengan konsumen.
    #list form level 8 (Buying Decision survei)
      #buy-1 : Saya yakin bahwa berbelanja di e-commerce merupakan keputusan yang tepat.
      #buy-2 : Saya akan berbelanja di e-commerce sesuai kebutuhan.
      #buy-3 : Saya akan menetapkan pembelian produk dari berbagai alternative yang tersedia di e-commerce.
      #buy-4 : Saya akan mencari informasi sebelum menetapkan pilihan produk.
      #buy-5 : Saya sering melakukan pembelian kembali pada e-commerce.
      #buy-6 : Saya merasa puas melakukan transaksi di e-commerce.
      #buy-7 : Saya akan merekomendasi e-commerce kepada orang terdekat.
      #buy-8 : Saya akan memberikan penilaian positif terhadap produk di e-commerce.

  @LMS
  Scenario Outline: Fill LMS google form
    Given user open chrome browser with url https://forms.gle/5K7d7LJFB1hwMrsP8
    And user fills the lms form based on given data:
      | time-1         | <time-1>         |
      | time-2         | <time-2>         |
      | speed-1        | <speed-1>        |
      | speed-2        | <speed-2>        |
      | error-1        | <error-1>        |
      | error-2        | <error-2>        |
      | retention      | <retention>      |
      | satisfaction-1 | <satisfaction-1> |
      | satisfaction-2 | <satisfaction-2> |
      | satisfaction-3 | <satisfaction-3> |
      | satisfaction-4 | <satisfaction-4> |
      | satisfaction-5 | <satisfaction-5> |
      | satisfaction-6 | <satisfaction-6> |
      | satisfaction-7 | <satisfaction-7> |
    Examples:
      | time-1 | time-2 | speed-1 | speed-2 | error-1 | error-2 | retention | satisfaction-1 | satisfaction-2 | satisfaction-3 | satisfaction-4 | satisfaction-5 | satisfaction-6 | satisfaction-7 |
#      | 1      | 1      | 2       | 3       | 2       | 1       | 1         | 1              | 3              | 1              | 2              | 3              | 1              | 1              |
#      | 2      | 2      | 3       | 1       | 2       | 4       | 4         | 2              | 2              | 3              | 1              | 1              | 2              | 2              |
#      | 3      | 3      | 1       | 2       | 3       | 4       | 3         | 3              | 1              | 2              | 3              | 2              | 3              | 3              |
#      | 1      | 2      | 1       | 2       | 2       | 4       | 3         | 3              | 1              | 2              | 1              | 2              | 1              | 3              |
#      | 3      | 1      | 3       | 3       | 1       | 3       | 3         | 2              | 1              | 3              | 1              | 2              | 1              | 2              |
#      | 3      | 3      | 2       | 1       | 1       | 2       | 3         | 1              | 3              | 1              | 2              | 3              | 2              | 3              |
#      | 2      | 3      | 1       | 2       | 3       | 4       | 3         | 3              | 1              | 2              | 3              | 2              | 3              | 2              |
#      | 1      | 2      | 3       | 2       | 2       | 4       | 3         | 1              | 2              | 3              | 2              | 1              | 3              | 3              |
#      | 3      | 3      | 1       | 2       | 3       | 4       | 3         | 3              | 1              | 2              | 3              | 2              | 3              | 3              |
#      | 2      | 1      | 2       | 3       | 3       | 2       | 1         | 2              | 3              | 1              | 2              | 2              | 3              | 1              |
#      | 4      | 1      | 5       | 4       | 4       | 2       | 1         | 4              | 4              | 4              | 4              | 5              | 4              | 5              |
#      | 5      | 1      | 5       | 4       | 4       | 2       | 1         | 4              | 4              | 4              | 4              | 5              | 5              | 5              |

#      | 4      | 3      | 5       | 4       | 4       | 2       | 4         | 4              | 4              | 4              | 5              | 5              | 5              | 4              |
#      | 5      | 2      | 4       | 4       | 5       | 1       | 3         | 4              | 4              | 4              | 4              | 5              | 5              | 4              |
#      | 5      | 1      | 4       | 4       | 5       | 2       | 2         | 4              | 5              | 4              | 5              | 4              | 4              | 4              |
#      | 4      | 2      | 5       | 5       | 4       | 2       | 6         | 5              | 4              | 5              | 4              | 5              | 5              | 4              |
#      | 5      | 3      | 4       | 5       | 4       | 2       | 2         | 4              | 5              | 5              | 5              | 4              | 5              | 4              |
#      | 4      | 2      | 5       | 4       | 4       | 1       | 6         | 4              | 5              | 5              | 4              | 4              | 5              | 5              |
#      | 5      | 2      | 5       | 5       | 5       | 2       | 4         | 4              | 4              | 4              | 4              | 4              | 5              | 5              |
#      | 4      | 2      | 4       | 4       | 4       | 2       | 6         | 4              | 5              | 4              | 4              | 5              | 5              | 4              |

#      | 5      | 2      | 5       | 5       | 4       | 1       | 5         | 4              | 4              | 4              | 5              | 5              | 5              | 4              |
#      | 5      | 1      | 5       | 5       | 5       | 1       | 4         | 5              | 5              | 5              | 5              | 5              | 4              | 5              |
#      | 4      | 1      | 5       | 5       | 4       | 1       | 3         | 4              | 5              | 4              | 4              | 4              | 4              | 5              |
#      | 4      | 3      | 5       | 4       | 4       | 2       | 5         | 5              | 5              | 4              | 5              | 4              | 4              | 5              |
#      | 5      | 3      | 4       | 5       | 5       | 1       | 4         | 5              | 5              | 4              | 5              | 4              | 4              | 5              |
#      | 4      | 1      | 5       | 4       | 4       | 1       | 6         | 4              | 4              | 4              | 5              | 5              | 4              | 4              |
#      | 4      | 1      | 4       | 4       | 5       | 2       | 2         | 4              | 5              | 4              | 5              | 5              | 5              | 4              |
#      | 4      | 2      | 4       | 5       | 5       | 1       | 3         | 4              | 4              | 5              | 4              | 4              | 5              | 4              |
#      | 5      | 1      | 4       | 4       | 5       | 2       | 3         | 5              | 5              | 4              | 4              | 5              | 5              | 4              |
#      | 4      | 3      | 4       | 4       | 4       | 2       | 6         | 5              | 4              | 5              | 5              | 5              | 5              | 4              |

#      | 5      | 1      | 5       | 4       | 4       | 2       | 5         | 5              | 4              | 4              | 4              | 5              | 4              | 4              |
#      | 5      | 1      | 4       | 5       | 5       | 2       | 4         | 5              | 5              | 4              | 5              | 5              | 5              | 5              |
#      | 4      | 1      | 5       | 4       | 4       | 1       | 4         | 5              | 5              | 4              | 5              | 4              | 5              | 4              |
#      | 4      | 1      | 5       | 5       | 5       | 1       | 5         | 4              | 5              | 4              | 4              | 5              | 5              | 4              |
#      | 4      | 3      | 4       | 5       | 5       | 2       | 3         | 5              | 5              | 4              | 5              | 4              | 5              | 4              |
#      | 4      | 3      | 5       | 4       | 4       | 2       | 4         | 5              | 5              | 4              | 4              | 4              | 4              | 5              |
#      | 5      | 1      | 4       | 4       | 5       | 1       | 5         | 5              | 4              | 5              | 5              | 4              | 5              | 5              |
#      | 4      | 2      | 4       | 4       | 4       | 1       | 5         | 5              | 4              | 4              | 4              | 5              | 5              | 5              |
#      | 4      | 3      | 5       | 5       | 4       | 1       | 5         | 5              | 5              | 4              | 4              | 5              | 4              | 5              |
#      | 4      | 2      | 4       | 5       | 4       | 1       | 4         | 4              | 4              | 5              | 5              | 5              | 5              | 4              |

#      | 5      | 1      | 5       | 4       | 4       | 2       | 3         | 4              | 4              | 4              | 4              | 5              | 5              | 5              |
#      | 4      | 1      | 4       | 5       | 5       | 2       | 3         | 5              | 5              | 4              | 4              | 4              | 5              | 4              |
#      | 5      | 3      | 5       | 5       | 5       | 1       | 5         | 5              | 4              | 5              | 4              | 4              | 5              | 4              |
#      | 4      | 1      | 5       | 4       | 4       | 2       | 3         | 4              | 4              | 4              | 5              | 5              | 4              | 4              |
#      | 4      | 2      | 4       | 4       | 5       | 1       | 3         | 5              | 5              | 5              | 5              | 5              | 4              | 4              |
#      | 4      | 3      | 5       | 4       | 5       | 2       | 4         | 4              | 5              | 5              | 4              | 4              | 5              | 4              |
#      | 5      | 1      | 5       | 4       | 5       | 1       | 3         | 5              | 5              | 4              | 4              | 5              | 4              | 4              |
#      | 4      | 3      | 5       | 5       | 4       | 2       | 4         | 4              | 5              | 4              | 5              | 5              | 4              | 4              |
#      | 4      | 3      | 4       | 4       | 4       | 2       | 4         | 4              | 4              | 5              | 5              | 4              | 5              | 4              |
#      | 4      | 1      | 4       | 5       | 4       | 2       | 4         | 4              | 5              | 5              | 5              | 5              | 4              | 4              |

#      | 4      | 2      | 5       | 4       | 4       | 1       | 5         | 4              | 4              | 5              | 5              | 4              | 4              | 4              |
#      | 4      | 2      | 4       | 5       | 4       | 2       | 4         | 4              | 5              | 5              | 4              | 5              | 5              | 4              |
#      | 5      | 1      | 5       | 5       | 4       | 1       | 2         | 4              | 5              | 5              | 5              | 5              | 5              | 4              |
#      | 5      | 1      | 5       | 5       | 5       | 1       | 1         | 4              | 5              | 4              | 4              | 5              | 4              | 4              |
#      | 5      | 2      | 5       | 4       | 4       | 2       | 2         | 4              | 5              | 4              | 5              | 5              | 4              | 5              |
#      | 4      | 2      | 4       | 4       | 4       | 2       | 1         | 4              | 4              | 4              | 4              | 4              | 4              | 4              |
#      | 5      | 2      | 5       | 5       | 4       | 2       | 1         | 5              | 5              | 5              | 4              | 5              | 5              | 4              |
#      | 5      | 3      | 5       | 4       | 4       | 1       | 2         | 4              | 5              | 5              | 4              | 5              | 4              | 4              |
#      | 4      | 1      | 5       | 4       | 4       | 2       | 2         | 5              | 4              | 5              | 4              | 5              | 4              | 5              |
#      | 4      | 1      | 4       | 4       | 4       | 3       | 3         | 4              | 4              | 5              | 5              | 5              | 5              | 5              |

#      | 5      | 1      | 5       | 4       | 5       | 1       | 1         | 5              | 4              | 5              | 5              | 4              | 5              | 4              |
#      | 5      | 1      | 4       | 4       | 5       | 1       | 2         | 5              | 4              | 4              | 5              | 4              | 5              | 4              |
#      | 5      | 1      | 5       | 5       | 4       | 1       | 1         | 5              | 5              | 5              | 4              | 5              | 5              | 4              |
#      | 4      | 2      | 4       | 4       | 4       | 2       | 2         | 5              | 4              | 5              | 4              | 5              | 4              | 4              |
#      | 5      | 1      | 5       | 5       | 4       | 1       | 2         | 4              | 5              | 4              | 4              | 5              | 5              | 5              |
#      | 5      | 1      | 5       | 5       | 4       | 2       | 1         | 5              | 5              | 4              | 4              | 5              | 4              | 5              |
#      | 4      | 1      | 4       | 5       | 5       | 1       | 2         | 5              | 5              | 4              | 5              | 5              | 4              | 5              |
#      | 5      | 3      | 5       | 5       | 5       | 1       | 3         | 4              | 5              | 5              | 5              | 5              | 4              | 5              |
#      | 4      | 2      | 5       | 4       | 5       | 1       | 3         | 4              | 4              | 5              | 4              | 5              | 4              | 5              |
#      | 5      | 1      | 5       | 4       | 5       | 1       | 1         | 5              | 4              | 5              | 5              | 5              | 4              | 5              |

#      | 4      | 1      | 4       | 4       | 4       | 2       | 1         | 4              | 4              | 5              | 4              | 5              | 3              | 4              |
#      | 5      | 1      | 4       | 4       | 5       | 1       | 3         | 5              | 5              | 5              | 4              | 4              | 4              | 5              |
#      | 5      | 1      | 5       | 5       | 5       | 1       | 1         | 5              | 5              | 5              | 5              | 5              | 5              | 5              |
      | 5      | 1      | 5       | 4       | 5       | 1       | 1         | 5              | 4              | 5              | 5              | 4              | 5              | 5              |
      | 5      | 3      | 5       | 4       | 4       | 1       | 2         | 4              | 5              | 5              | 4              | 5              | 4              | 4              |
      | 4      | 2      | 4       | 4       | 4       | 2       | 1         | 4              | 4              | 4              | 4              | 4              | 4              | 4              |
      | 5      | 1      | 5       | 4       | 5       | 1       | 1         | 4              | 5              | 4              | 5              | 5              | 4              | 4              |
      | 5      | 1      | 5       | 5       | 4       | 1       | 2         | 4              | 5              | 5              | 5              | 5              | 5              | 4              |
      | 5      | 2      | 5       | 5       | 4       | 1       | 2         | 4              | 5              | 5              | 5              | 5              | 4              | 4              |
      | 4      | 2      | 4       | 5       | 5       | 2       | 1         | 4              | 4              | 4              | 4              | 4              | 4              | 4              |

#      | 5      | 2      | 4       | 4       | 4       | 2       | 2         | 5              | 4              | 5              | 4              | 5              | 4              | 5              |
#      | 5      | 1      | 5       | 4       | 5       | 1       | 1         | 5              | 5              | 5              | 4              | 5              | 4              | 5              |
#      | 4      | 1      | 4       | 5       | 5       | 1       | 2         | 5              | 4              | 4              | 5              | 5              | 4              | 5              |
#      | 5      | 2      | 5       | 4       | 5       | 2       | 1         | 4              | 5              | 5              | 5              | 5              | 4              | 5              |