**free

ctl-opt dftactgrp(*no);

dcl-pi P3266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1109.rpgleinc'
/copy 'qrpgleref/P1328.rpgleinc'
/copy 'qrpgleref/P717.rpgleinc'

dcl-ds theTable extname('T1204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1204 LIMIT 1;

theCharVar = 'Hello from P3266';
dsply theCharVar;
P1109();
P1328();
P717();
return;