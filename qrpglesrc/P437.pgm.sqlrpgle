**free

ctl-opt dftactgrp(*no);

dcl-pi P437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'

dcl-ds theTable extname('T1100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1100 LIMIT 1;

theCharVar = 'Hello from P437';
dsply theCharVar;
P230();
P17();
P400();
return;