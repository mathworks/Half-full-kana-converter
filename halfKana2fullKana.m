function fullKanaString = halfKana2fullKana(halfKanaString)
% Copyright 2019 The MathWorks, Inc.

% 変換すべき文字リスト作成（繰り返し実行する際はこの部分外で定義）
halfKana = split("ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜｦﾝｰ","");
fullKana = split("アイウエオカキクケコサシスセソ" + ...
             "タチツテトナニヌネノハヒフヘホ" + ...
             "マミムメモヤユヨラリルレロワヲンー","");
         
halfKanaDakuon = split("ｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾊﾋﾌﾍﾎ",{'',' '}) + "ﾞ";
fullKanaDakuon = split("ガギグゲゴザジズゼゾダヂヅデドバビブベボ","");
halfKanaHandakuon = split("ﾊﾋﾌﾍﾎ","") + "ﾟ";
fullKanaHandakuon = split("パピプペポ","");

% 上の作業では冒頭・最後に不要な文字列が入るので削除
halfKana([1,end]) = [];
fullKana([1,end]) = [];
halfKanaDakuon([1,end]) = [];
fullKanaDakuon([1,end]) = [];
halfKanaHandakuon([1,end]) = [];
fullKanaHandakuon([1,end]) = [];

% 半角 => 全角
tmp = replace(halfKanaString,halfKanaHandakuon,fullKanaHandakuon);
tmp = replace(tmp,halfKanaDakuon,fullKanaDakuon);
fullKanaString = replace(tmp,halfKana,fullKana);

end

