**free

ctl-opt dftactgrp(*no);

dcl-pi P1138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P1138';
dsply theCharVar;
P38();
P970();
P1135();
return;