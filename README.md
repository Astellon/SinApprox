# SinApprox

テーブル引き、パデ近似でsinの高速化を頑張った痕跡。uint32版の位相クラスも入ってるが妥協が多いので参考程度にしてください。
ただし実験には影響がない部分です。

## テスト

```
$ g++ -std=c++14 -O3 phase.cpp sin.cpp test.cpp
$ ./a.out
```

## 結果

参考までに手元での結果を示す。
```
error (root mean square)
 error of table (uint32) : 2.43049e-06
 error of table (double) : 2.43027e-06
 error of pade           : 0.000195134

Phase + std::sin : 78151800
double + std::sin : 64284000
Phase + pade::sin : 26003800
double + pade::sin : 26097500
Phase + table::sin : 20556500
double + table::sin : 37800000
Phase + compiletime_table::sin : 14457300
double + compiletime_table::sin : 36753500
```

## 覚書

簡単な記録を[doc.md](https://github.com/Astellon/SinApprox/blob/master/doc.md)に残しておいたので気になる人は見てください。
