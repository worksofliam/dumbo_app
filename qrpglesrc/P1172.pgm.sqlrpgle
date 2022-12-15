**free

ctl-opt dftactgrp(*no);

dcl-pi P1172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'

dcl-ds theTable extname('T1272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1272 LIMIT 1;

theCharVar = 'Hello from P1172';
dsply theCharVar;
P753();
P76();
P53();
return;