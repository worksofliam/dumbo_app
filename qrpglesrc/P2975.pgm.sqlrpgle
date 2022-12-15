**free

ctl-opt dftactgrp(*no);

dcl-pi P2975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P1851.rpgleinc'
/copy 'qrpgleref/P2762.rpgleinc'

dcl-ds theTable extname('T646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T646 LIMIT 1;

theCharVar = 'Hello from P2975';
dsply theCharVar;
P1122();
P1851();
P2762();
return;