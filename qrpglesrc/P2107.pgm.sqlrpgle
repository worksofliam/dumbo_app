**free

ctl-opt dftactgrp(*no);

dcl-pi P2107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P985.rpgleinc'
/copy 'qrpgleref/P1257.rpgleinc'
/copy 'qrpgleref/P951.rpgleinc'

dcl-ds theTable extname('T1228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1228 LIMIT 1;

theCharVar = 'Hello from P2107';
dsply theCharVar;
P985();
P1257();
P951();
return;