**free

ctl-opt dftactgrp(*no);

dcl-pi P5455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2519.rpgleinc'
/copy 'qrpgleref/P4198.rpgleinc'
/copy 'qrpgleref/P3179.rpgleinc'

dcl-ds theTable extname('T1337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1337 LIMIT 1;

theCharVar = 'Hello from P5455';
dsply theCharVar;
P2519();
P4198();
P3179();
return;