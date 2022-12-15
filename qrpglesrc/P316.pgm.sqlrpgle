**free

ctl-opt dftactgrp(*no);

dcl-pi P316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P316';
dsply theCharVar;
P133();
P123();
P135();
return;