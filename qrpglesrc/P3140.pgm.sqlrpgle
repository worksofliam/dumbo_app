**free

ctl-opt dftactgrp(*no);

dcl-pi P3140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2184.rpgleinc'
/copy 'qrpgleref/P1600.rpgleinc'
/copy 'qrpgleref/P1718.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P3140';
dsply theCharVar;
P2184();
P1600();
P1718();
return;