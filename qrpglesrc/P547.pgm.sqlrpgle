**free

ctl-opt dftactgrp(*no);

dcl-pi P547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P547';
dsply theCharVar;
P505();
P242();
P127();
return;