**free

ctl-opt dftactgrp(*no);

dcl-pi P2120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'

dcl-ds T1292 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1292 FROM T1292 LIMIT 1;

theCharVar = 'Hello from P2120';
dsply theCharVar;
P925();
P1441();
P598();
return;