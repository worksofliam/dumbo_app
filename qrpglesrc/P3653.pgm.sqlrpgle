**free

ctl-opt dftactgrp(*no);

dcl-pi P3653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P960.rpgleinc'
/copy 'qrpgleref/P1633.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P3653';
dsply theCharVar;
P960();
P1633();
P759();
return;