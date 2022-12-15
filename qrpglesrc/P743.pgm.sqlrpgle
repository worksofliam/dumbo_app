**free

ctl-opt dftactgrp(*no);

dcl-pi P743;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P671.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P743';
dsply theCharVar;
P671();
P513();
P729();
return;