**free

ctl-opt dftactgrp(*no);

dcl-pi P4696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1637.rpgleinc'
/copy 'qrpgleref/P1209.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P4696';
dsply theCharVar;
P1637();
P1209();
P1312();
return;