**free

ctl-opt dftactgrp(*no);

dcl-pi P525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'

dcl-ds theTable extname('T434') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T434 LIMIT 1;

theCharVar = 'Hello from P525';
dsply theCharVar;
P470();
P93();
P242();
return;