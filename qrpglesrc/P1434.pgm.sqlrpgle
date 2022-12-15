**free

ctl-opt dftactgrp(*no);

dcl-pi P1434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P975.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T469 LIMIT 1;

theCharVar = 'Hello from P1434';
dsply theCharVar;
P975();
P0();
P221();
return;