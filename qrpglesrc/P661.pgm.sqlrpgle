**free

ctl-opt dftactgrp(*no);

dcl-pi P661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T1020') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1020 LIMIT 1;

theCharVar = 'Hello from P661';
dsply theCharVar;
P76();
P439();
P33();
return;