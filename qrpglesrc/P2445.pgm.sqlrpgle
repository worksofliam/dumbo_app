**free

ctl-opt dftactgrp(*no);

dcl-pi P2445;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P2445';
dsply theCharVar;
P808();
P896();
P28();
return;