**free

ctl-opt dftactgrp(*no);

dcl-pi P300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds theTable extname('T540') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T540 LIMIT 1;

theCharVar = 'Hello from P300';
dsply theCharVar;
P263();
P132();
P56();
return;