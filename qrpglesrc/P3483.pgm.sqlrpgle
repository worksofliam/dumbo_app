**free

ctl-opt dftactgrp(*no);

dcl-pi P3483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2089.rpgleinc'
/copy 'qrpgleref/P1789.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'

dcl-ds theTable extname('T1697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1697 LIMIT 1;

theCharVar = 'Hello from P3483';
dsply theCharVar;
P2089();
P1789();
P395();
return;