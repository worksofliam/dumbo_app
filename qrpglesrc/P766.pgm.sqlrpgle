**free

ctl-opt dftactgrp(*no);

dcl-pi P766;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T552 LIMIT 1;

theCharVar = 'Hello from P766';
dsply theCharVar;
P684();
P280();
P729();
return;