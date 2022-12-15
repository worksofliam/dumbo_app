**free

ctl-opt dftactgrp(*no);

dcl-pi P1374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P1374';
dsply theCharVar;
P627();
P200();
P728();
return;