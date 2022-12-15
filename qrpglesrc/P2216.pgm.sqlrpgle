**free

ctl-opt dftactgrp(*no);

dcl-pi P2216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1550.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds theTable extname('T1347') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1347 LIMIT 1;

theCharVar = 'Hello from P2216';
dsply theCharVar;
P1550();
P134();
P709();
return;