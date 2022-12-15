**free

ctl-opt dftactgrp(*no);

dcl-pi P3911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P2597.rpgleinc'

dcl-ds theTable extname('T834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T834 LIMIT 1;

theCharVar = 'Hello from P3911';
dsply theCharVar;
P1572();
P6();
P2597();
return;