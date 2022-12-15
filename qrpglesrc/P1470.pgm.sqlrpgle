**free

ctl-opt dftactgrp(*no);

dcl-pi P1470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P1167.rpgleinc'
/copy 'qrpgleref/P1263.rpgleinc'

dcl-ds theTable extname('T415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T415 LIMIT 1;

theCharVar = 'Hello from P1470';
dsply theCharVar;
P1211();
P1167();
P1263();
return;