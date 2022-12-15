**free

ctl-opt dftactgrp(*no);

dcl-pi P5076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3499.rpgleinc'
/copy 'qrpgleref/P2655.rpgleinc'
/copy 'qrpgleref/P3684.rpgleinc'

dcl-ds theTable extname('T1584') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1584 LIMIT 1;

theCharVar = 'Hello from P5076';
dsply theCharVar;
P3499();
P2655();
P3684();
return;