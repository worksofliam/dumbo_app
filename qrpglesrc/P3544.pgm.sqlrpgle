**free

ctl-opt dftactgrp(*no);

dcl-pi P3544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2178.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'

dcl-ds theTable extname('T1660') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1660 LIMIT 1;

theCharVar = 'Hello from P3544';
dsply theCharVar;
P2178();
P209();
P719();
return;