**free

ctl-opt dftactgrp(*no);

dcl-pi P4140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P3451.rpgleinc'
/copy 'qrpgleref/P3443.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P4140';
dsply theCharVar;
P495();
P3451();
P3443();
return;