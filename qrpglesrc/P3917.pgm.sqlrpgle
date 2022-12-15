**free

ctl-opt dftactgrp(*no);

dcl-pi P3917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2391.rpgleinc'
/copy 'qrpgleref/P3700.rpgleinc'
/copy 'qrpgleref/P1203.rpgleinc'

dcl-ds theTable extname('T427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T427 LIMIT 1;

theCharVar = 'Hello from P3917';
dsply theCharVar;
P2391();
P3700();
P1203();
return;