**free

ctl-opt dftactgrp(*no);

dcl-pi P3172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P2499.rpgleinc'
/copy 'qrpgleref/P2715.rpgleinc'

dcl-ds theTable extname('T702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T702 LIMIT 1;

theCharVar = 'Hello from P3172';
dsply theCharVar;
P36();
P2499();
P2715();
return;