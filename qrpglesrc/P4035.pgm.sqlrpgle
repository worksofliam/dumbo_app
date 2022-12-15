**free

ctl-opt dftactgrp(*no);

dcl-pi P4035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2409.rpgleinc'
/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'

dcl-ds theTable extname('T637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T637 LIMIT 1;

theCharVar = 'Hello from P4035';
dsply theCharVar;
P2409();
P1604();
P944();
return;