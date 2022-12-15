**free

ctl-opt dftactgrp(*no);

dcl-pi P816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T391 LIMIT 1;

theCharVar = 'Hello from P816';
dsply theCharVar;
P233();
P459();
P254();
return;