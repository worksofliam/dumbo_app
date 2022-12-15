**free

ctl-opt dftactgrp(*no);

dcl-pi P1749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1747.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P1749';
dsply theCharVar;
P1747();
P893();
P1491();
return;