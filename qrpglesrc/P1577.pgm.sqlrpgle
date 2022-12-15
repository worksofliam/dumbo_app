**free

ctl-opt dftactgrp(*no);

dcl-pi P1577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'

dcl-ds theTable extname('T1808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1808 LIMIT 1;

theCharVar = 'Hello from P1577';
dsply theCharVar;
P216();
P355();
P835();
return;