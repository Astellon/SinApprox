# SinApprox

テーブル引き、パデ近似でsinの高速化を頑張った痕跡。uint32版の位相クラスも入ってるが妥協が多いので参考程度にしてください。
ただし実験には影響がない部分です。

## テスト

```
$ g++ -std=c++11 -O3 phase.cpp test.cpp
$ ./a.out
```

## 結果

参考までに手元での結果を示す。
```
2560000 times call

error (root mean square)
 error of table (uint32) : 2.43049e-06
 error of table (double) : 2.43027e-06
 error of pade           : 2.38454e-05

time (using double phase)
 std::sin time   : 65191100
 table::sin time : 34935000 (1.86607x faster)
 pade::sin time  : 29021700 (2.24629x faster)

time (using uint32 phase)
 table::sin time : 19628300 (3.32128x faster)
 pade::sin time  : 27823800 (2.343x faster)
 
```
