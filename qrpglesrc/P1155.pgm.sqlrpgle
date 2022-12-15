**free

ctl-opt dftactgrp(*no);

dcl-pi P1155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1835') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1835 LIMIT 1;

theCharVar = 'Hello from P1155';
dsply theCharVar;
P122();
P699();
P79();
return;