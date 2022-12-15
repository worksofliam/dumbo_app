**free

ctl-opt dftactgrp(*no);

dcl-pi P816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds theTable extname('T1347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1347 LIMIT 1;

theCharVar = 'Hello from P816';
dsply theCharVar;
P31();
P547();
P407();
return;