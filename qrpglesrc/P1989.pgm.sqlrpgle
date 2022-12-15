**free

ctl-opt dftactgrp(*no);

dcl-pi P1989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P1989';
dsply theCharVar;
P1342();
P1756();
P1142();
return;