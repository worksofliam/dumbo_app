**free

ctl-opt dftactgrp(*no);

dcl-pi P2488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2464.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'

dcl-ds theTable extname('T588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T588 LIMIT 1;

theCharVar = 'Hello from P2488';
dsply theCharVar;
P2464();
P41();
P625();
return;