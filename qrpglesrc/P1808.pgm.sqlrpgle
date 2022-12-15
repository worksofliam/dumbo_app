**free

ctl-opt dftactgrp(*no);

dcl-pi P1808;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds theTable extname('T1834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1834 LIMIT 1;

theCharVar = 'Hello from P1808';
dsply theCharVar;
P1254();
P1213();
P1352();
return;