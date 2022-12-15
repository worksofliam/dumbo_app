**free

ctl-opt dftactgrp(*no);

dcl-pi P2058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds theTable extname('T511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T511 LIMIT 1;

theCharVar = 'Hello from P2058';
dsply theCharVar;
P1063();
P99();
P501();
return;