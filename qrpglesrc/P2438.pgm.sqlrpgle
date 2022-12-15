**free

ctl-opt dftactgrp(*no);

dcl-pi P2438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P1708.rpgleinc'

dcl-ds theTable extname('T841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T841 LIMIT 1;

theCharVar = 'Hello from P2438';
dsply theCharVar;
P902();
P187();
P1708();
return;