**free

ctl-opt dftactgrp(*no);

dcl-pi P1209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P1209';
dsply theCharVar;
P859();
P69();
P1118();
return;