**free

ctl-opt dftactgrp(*no);

dcl-pi P4708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4661.rpgleinc'
/copy 'qrpgleref/P4534.rpgleinc'
/copy 'qrpgleref/P2247.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P4708';
dsply theCharVar;
P4661();
P4534();
P2247();
return;