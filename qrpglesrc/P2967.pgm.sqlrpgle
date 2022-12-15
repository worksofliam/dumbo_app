**free

ctl-opt dftactgrp(*no);

dcl-pi P2967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1817.rpgleinc'
/copy 'qrpgleref/P1363.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P2967';
dsply theCharVar;
P1817();
P1363();
P246();
return;