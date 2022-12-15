**free

ctl-opt dftactgrp(*no);

dcl-pi P2178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P1560.rpgleinc'

dcl-ds theTable extname('T707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T707 LIMIT 1;

theCharVar = 'Hello from P2178';
dsply theCharVar;
P408();
P715();
P1560();
return;