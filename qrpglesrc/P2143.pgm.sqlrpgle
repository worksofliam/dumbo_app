**free

ctl-opt dftactgrp(*no);

dcl-pi P2143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P2129.rpgleinc'

dcl-ds theTable extname('T129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T129 LIMIT 1;

theCharVar = 'Hello from P2143';
dsply theCharVar;
P390();
P367();
P2129();
return;