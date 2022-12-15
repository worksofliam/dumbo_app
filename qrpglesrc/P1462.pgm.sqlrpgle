**free

ctl-opt dftactgrp(*no);

dcl-pi P1462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P1462';
dsply theCharVar;
P1188();
P727();
P1332();
return;