**free

ctl-opt dftactgrp(*no);

dcl-pi P1777;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1165.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P1075.rpgleinc'

dcl-ds theTable extname('T1780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1780 LIMIT 1;

theCharVar = 'Hello from P1777';
dsply theCharVar;
P1165();
P968();
P1075();
return;