**free

ctl-opt dftactgrp(*no);

dcl-pi P3313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P386.rpgleinc'

dcl-ds theTable extname('T835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T835 LIMIT 1;

theCharVar = 'Hello from P3313';
dsply theCharVar;
P76();
P1396();
P386();
return;