**free

ctl-opt dftactgrp(*no);

dcl-pi P2417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1265.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'

dcl-ds T1053 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1053 FROM T1053 LIMIT 1;

theCharVar = 'Hello from P2417';
dsply theCharVar;
P1265();
P1949();
P611();
return;