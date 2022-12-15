**free

ctl-opt dftactgrp(*no);

dcl-pi P5349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3856.rpgleinc'
/copy 'qrpgleref/P2804.rpgleinc'
/copy 'qrpgleref/P3551.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P5349';
dsply theCharVar;
P3856();
P2804();
P3551();
return;