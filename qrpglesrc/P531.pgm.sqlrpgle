**free

ctl-opt dftactgrp(*no);

dcl-pi P531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P492.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P531';
dsply theCharVar;
P146();
P492();
P23();
return;