**free

ctl-opt dftactgrp(*no);

dcl-pi P5253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3129.rpgleinc'
/copy 'qrpgleref/P2326.rpgleinc'
/copy 'qrpgleref/P4360.rpgleinc'

dcl-ds theTable extname('T1689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1689 LIMIT 1;

theCharVar = 'Hello from P5253';
dsply theCharVar;
P3129();
P2326();
P4360();
return;