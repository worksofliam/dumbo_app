**free

ctl-opt dftactgrp(*no);

dcl-pi P3487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2736.rpgleinc'
/copy 'qrpgleref/P1614.rpgleinc'
/copy 'qrpgleref/P3215.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P3487';
dsply theCharVar;
P2736();
P1614();
P3215();
return;