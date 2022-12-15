**free

ctl-opt dftactgrp(*no);

dcl-pi P2383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P630.rpgleinc'
/copy 'qrpgleref/P2037.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P2383';
dsply theCharVar;
P630();
P2037();
P570();
return;