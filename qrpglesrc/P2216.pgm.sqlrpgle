**free

ctl-opt dftactgrp(*no);

dcl-pi P2216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2167.rpgleinc'
/copy 'qrpgleref/P1851.rpgleinc'
/copy 'qrpgleref/P1816.rpgleinc'

dcl-ds theTable extname('T973') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T973 LIMIT 1;

theCharVar = 'Hello from P2216';
dsply theCharVar;
P2167();
P1851();
P1816();
return;