**free

ctl-opt dftactgrp(*no);

dcl-pi P2545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2076.rpgleinc'
/copy 'qrpgleref/P298.rpgleinc'
/copy 'qrpgleref/P1841.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P2545';
dsply theCharVar;
P2076();
P298();
P1841();
return;