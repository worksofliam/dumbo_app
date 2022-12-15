**free

ctl-opt dftactgrp(*no);

dcl-pi P608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'

dcl-ds theTable extname('T347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T347 LIMIT 1;

theCharVar = 'Hello from P608';
dsply theCharVar;
P561();
P604();
P470();
return;