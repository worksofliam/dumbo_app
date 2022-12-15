**free

ctl-opt dftactgrp(*no);

dcl-pi P1513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P1276.rpgleinc'

dcl-ds theTable extname('T709') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T709 LIMIT 1;

theCharVar = 'Hello from P1513';
dsply theCharVar;
P155();
P1439();
P1276();
return;