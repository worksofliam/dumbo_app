**free

ctl-opt dftactgrp(*no);

dcl-pi P1503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds theTable extname('T1420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1420 LIMIT 1;

theCharVar = 'Hello from P1503';
dsply theCharVar;
P439();
P571();
P1154();
return;