**free

ctl-opt dftactgrp(*no);

dcl-pi P1544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'

dcl-ds theTable extname('T395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T395 LIMIT 1;

theCharVar = 'Hello from P1544';
dsply theCharVar;
P954();
P606();
P978();
return;