**free

ctl-opt dftactgrp(*no);

dcl-pi P3333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P2736.rpgleinc'
/copy 'qrpgleref/P2142.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P3333';
dsply theCharVar;
P774();
P2736();
P2142();
return;