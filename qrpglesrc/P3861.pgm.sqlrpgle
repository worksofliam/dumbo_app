**free

ctl-opt dftactgrp(*no);

dcl-pi P3861;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P2945.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P3861';
dsply theCharVar;
P1763();
P529();
P2945();
return;