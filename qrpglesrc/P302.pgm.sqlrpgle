**free

ctl-opt dftactgrp(*no);

dcl-pi P302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P122.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T1013') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1013 LIMIT 1;

theCharVar = 'Hello from P302';
dsply theCharVar;
P122();
P213();
P168();
return;