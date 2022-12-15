**free

ctl-opt dftactgrp(*no);

dcl-pi P484;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P484';
dsply theCharVar;
P214();
P190();
P219();
return;