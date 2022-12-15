**free

ctl-opt dftactgrp(*no);

dcl-pi P804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T376 LIMIT 1;

theCharVar = 'Hello from P804';
dsply theCharVar;
P253();
P655();
P261();
return;