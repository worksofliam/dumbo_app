**free

ctl-opt dftactgrp(*no);

dcl-pi P2753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1335.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'

dcl-ds theTable extname('T24') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T24 LIMIT 1;

theCharVar = 'Hello from P2753';
dsply theCharVar;
P1335();
P180();
P1491();
return;