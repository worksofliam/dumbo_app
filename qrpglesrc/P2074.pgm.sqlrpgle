**free

ctl-opt dftactgrp(*no);

dcl-pi P2074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P2074';
dsply theCharVar;
P655();
P179();
P1126();
return;