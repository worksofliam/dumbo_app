**free

ctl-opt dftactgrp(*no);

dcl-pi P2929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1904.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds theTable extname('T1693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1693 LIMIT 1;

theCharVar = 'Hello from P2929';
dsply theCharVar;
P1904();
P1341();
P1554();
return;