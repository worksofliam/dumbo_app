**free

ctl-opt dftactgrp(*no);

dcl-pi P1009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds theTable extname('T44') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T44 LIMIT 1;

theCharVar = 'Hello from P1009';
dsply theCharVar;
P913();
P673();
P293();
return;