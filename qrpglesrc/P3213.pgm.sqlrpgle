**free

ctl-opt dftactgrp(*no);

dcl-pi P3213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P1807.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T658') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T658 LIMIT 1;

theCharVar = 'Hello from P3213';
dsply theCharVar;
P2308();
P1807();
P255();
return;