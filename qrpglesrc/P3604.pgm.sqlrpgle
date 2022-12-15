**free

ctl-opt dftactgrp(*no);

dcl-pi P3604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P2986.rpgleinc'
/copy 'qrpgleref/P2440.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P3604';
dsply theCharVar;
P213();
P2986();
P2440();
return;