**free

ctl-opt dftactgrp(*no);

dcl-pi P2153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P2153';
dsply theCharVar;
P926();
P208();
P601();
return;