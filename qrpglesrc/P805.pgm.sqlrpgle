**free

ctl-opt dftactgrp(*no);

dcl-pi P805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P805';
dsply theCharVar;
P767();
P344();
P568();
return;