**free

ctl-opt dftactgrp(*no);

dcl-pi P3736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P3650.rpgleinc'
/copy 'qrpgleref/P3417.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P3736';
dsply theCharVar;
P376();
P3650();
P3417();
return;