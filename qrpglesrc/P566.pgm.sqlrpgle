**free

ctl-opt dftactgrp(*no);

dcl-pi P566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'

dcl-ds theTable extname('T547') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T547 LIMIT 1;

theCharVar = 'Hello from P566';
dsply theCharVar;
P412();
P159();
P479();
return;