**free

ctl-opt dftactgrp(*no);

dcl-pi P1178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1134.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T1492') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1492 LIMIT 1;

theCharVar = 'Hello from P1178';
dsply theCharVar;
P1134();
P98();
P235();
return;