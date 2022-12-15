**free

ctl-opt dftactgrp(*no);

dcl-pi P3143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P2651.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P3143';
dsply theCharVar;
P98();
P2651();
P555();
return;