**free

ctl-opt dftactgrp(*no);

dcl-pi P2991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1599.rpgleinc'
/copy 'qrpgleref/P1998.rpgleinc'
/copy 'qrpgleref/P2199.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P2991';
dsply theCharVar;
P1599();
P1998();
P2199();
return;