**free

ctl-opt dftactgrp(*no);

dcl-pi P4471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2043.rpgleinc'
/copy 'qrpgleref/P4378.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P4471';
dsply theCharVar;
P2043();
P4378();
P694();
return;