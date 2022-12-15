**free

ctl-opt dftactgrp(*no);

dcl-pi P909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T354 LIMIT 1;

theCharVar = 'Hello from P909';
dsply theCharVar;
P470();
P664();
P285();
return;