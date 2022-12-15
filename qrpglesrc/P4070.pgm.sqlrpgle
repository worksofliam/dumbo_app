**free

ctl-opt dftactgrp(*no);

dcl-pi P4070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4010.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T1712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1712 LIMIT 1;

theCharVar = 'Hello from P4070';
dsply theCharVar;
P4010();
P435();
P346();
return;