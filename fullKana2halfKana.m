function halfKanaString = fullKana2halfKana(fullKanaString)
% Copyright 2019 The MathWorks, Inc.

% 変換すべき文字リスト作成（繰り返し実行する際はこの部分外で定義）
halfKana = split("ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜｦﾝｰ","");
fullKana = split("アイウエオカキクケコサシスセソ" + ...
             "タチツテトナニヌネノハヒフヘホ" + ...
             "マミムメモヤユヨラリルレロワヲンー" + ...
             "０１２３４５６７８９","");
         
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

% 全角 => 半角
tmp = replace(fullKanaString,fullKana,halfKana);
tmp = replace(tmp,fullKanaDakuon,halfKanaDakuon);
halfKanaString = replace(tmp,fullKanaHandakuon,halfKanaHandakuon);

end

