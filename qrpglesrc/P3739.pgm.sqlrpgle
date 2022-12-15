**free

ctl-opt dftactgrp(*no);

dcl-pi P3739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P733.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P3739';
dsply theCharVar;
P733();
P381();
P863();
return;