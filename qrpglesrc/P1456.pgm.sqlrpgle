**free

ctl-opt dftactgrp(*no);

dcl-pi P1456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T459 LIMIT 1;

theCharVar = 'Hello from P1456';
dsply theCharVar;
P238();
P708();
P439();
return;