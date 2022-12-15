**free

ctl-opt dftactgrp(*no);

dcl-pi P163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T295') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T295 LIMIT 1;

theCharVar = 'Hello from P163';
dsply theCharVar;
P1();
P40();
P133();
return;