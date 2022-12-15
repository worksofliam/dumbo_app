**free

ctl-opt dftactgrp(*no);

dcl-pi P1308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P655.rpgleinc'

dcl-ds theTable extname('T333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T333 LIMIT 1;

theCharVar = 'Hello from P1308';
dsply theCharVar;
P606();
P342();
P655();
return;