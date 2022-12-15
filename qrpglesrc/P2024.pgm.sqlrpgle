**free

ctl-opt dftactgrp(*no);

dcl-pi P2024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P1956.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P2024';
dsply theCharVar;
P7();
P170();
P1956();
return;