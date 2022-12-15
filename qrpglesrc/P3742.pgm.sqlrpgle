**free

ctl-opt dftactgrp(*no);

dcl-pi P3742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1078.rpgleinc'
/copy 'qrpgleref/P2069.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'

dcl-ds theTable extname('T1655') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1655 LIMIT 1;

theCharVar = 'Hello from P3742';
dsply theCharVar;
P1078();
P2069();
P936();
return;