**free

ctl-opt dftactgrp(*no);

dcl-pi P600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T1179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1179 LIMIT 1;

theCharVar = 'Hello from P600';
dsply theCharVar;
P498();
P285();
P500();
return;