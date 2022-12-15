**free

ctl-opt dftactgrp(*no);

dcl-pi P2987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P1628.rpgleinc'
/copy 'qrpgleref/P2226.rpgleinc'

dcl-ds theTable extname('T1516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1516 LIMIT 1;

theCharVar = 'Hello from P2987';
dsply theCharVar;
P384();
P1628();
P2226();
return;