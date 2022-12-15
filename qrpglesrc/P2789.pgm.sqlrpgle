**free

ctl-opt dftactgrp(*no);

dcl-pi P2789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P979.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P2190.rpgleinc'

dcl-ds theTable extname('T939') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T939 LIMIT 1;

theCharVar = 'Hello from P2789';
dsply theCharVar;
P979();
P1756();
P2190();
return;