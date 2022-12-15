**free

ctl-opt dftactgrp(*no);

dcl-pi P3724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P2629.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T415 LIMIT 1;

theCharVar = 'Hello from P3724';
dsply theCharVar;
P1715();
P2629();
P219();
return;