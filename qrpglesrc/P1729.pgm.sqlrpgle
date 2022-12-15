**free

ctl-opt dftactgrp(*no);

dcl-pi P1729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds theTable extname('T1259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1259 LIMIT 1;

theCharVar = 'Hello from P1729';
dsply theCharVar;
P253();
P1506();
P555();
return;