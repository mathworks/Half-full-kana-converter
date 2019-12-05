# Half-full-kana-converter
A function to convert between half-kana and full kana.

# Example: カタカナ半角・全角変換
```matlab

sampleString = '私はﾀﾏｺﾞとｽﾑｰｼﾞｰとﾌﾟﾘﾝを朝ごはんに食べる';
```

半角 => 全角

```matlab
tmp = halfKana2fullKana(sampleString)
tmp = '私はタマゴとスムージーとプリンを朝ごはんに食べる'
```
全角 => 半角

```
fullKana2halfKana(tmp)
ans = '私はﾀﾏｺﾞとｽﾑｰｼﾞｰとﾌﾟﾘﾝを朝ごはんに食べる'
```

Copyright 2019 The MathWorks, Inc.
[![View Half-full kana converter (半角・全角カナ変換) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://jp.mathworks.com/matlabcentral/fileexchange/71610-half-full-kana-converter)
