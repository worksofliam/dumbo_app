**free

ctl-opt dftactgrp(*no);

dcl-pi P1599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T885') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T885 LIMIT 1;

theCharVar = 'Hello from P1599';
dsply theCharVar;
P572();
P1378();
P601();
return;