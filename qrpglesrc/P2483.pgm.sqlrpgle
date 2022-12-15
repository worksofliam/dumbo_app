**free

ctl-opt dftactgrp(*no);

dcl-pi P2483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1784.rpgleinc'
/copy 'qrpgleref/P2230.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P2483';
dsply theCharVar;
P1784();
P2230();
P970();
return;