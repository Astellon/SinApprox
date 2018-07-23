# SinApprox

テーブル引き、パデ近似でsinの高速化を頑張った痕跡。uint32版の位相クラスも入ってるが妥協が多いので参考程度にしてください。
ただし実験には影響がない部分です。

## テスト

```
$ g++ -std=c++11 -O3 sin.cpp phase.cpp test.cpp
$ ./a.out
```

## 結果

参考までに手元での結果を示す。
```
error (root mean square)
 error of table (uint32) : 0.707105
 error of table (double) : 0.707105
 error of pade           : 0.706958

Phase + std::sin : 79551700
double + std::sin : 68806800
Phase + pade::sin : 25896600
double + pade::sin : 26198400
Phase + table::sin : 21641900
double + table::sin : 38154200
```

## 覚書

簡単な記録を[doc.md](https://github.com/Astellon/SinApprox/blob/master/doc.md)に残しておいたので気になる人は見てください。
