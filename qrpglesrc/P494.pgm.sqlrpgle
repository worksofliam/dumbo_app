**free

ctl-opt dftactgrp(*no);

dcl-pi P494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P494';
dsply theCharVar;
P310();
P454();
P103();
return;