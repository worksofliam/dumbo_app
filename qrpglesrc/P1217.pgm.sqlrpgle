**free

ctl-opt dftactgrp(*no);

dcl-pi P1217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P1217';
dsply theCharVar;
P710();
P832();
P439();
return;