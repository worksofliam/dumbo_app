**free

ctl-opt dftactgrp(*no);

dcl-pi P3523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1100.rpgleinc'
/copy 'qrpgleref/P3233.rpgleinc'
/copy 'qrpgleref/P607.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P3523';
dsply theCharVar;
P1100();
P3233();
P607();
return;