**free

ctl-opt dftactgrp(*no);

dcl-pi P852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P305.rpgleinc'

dcl-ds theTable extname('T1258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1258 LIMIT 1;

theCharVar = 'Hello from P852';
dsply theCharVar;
P285();
P596();
P305();
return;