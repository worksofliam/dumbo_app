**free

ctl-opt dftactgrp(*no);

dcl-pi P220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P220';
dsply theCharVar;
P214();
P124();
P100();
return;