**free

ctl-opt dftactgrp(*no);

dcl-pi P1613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1285.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds theTable extname('T538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T538 LIMIT 1;

theCharVar = 'Hello from P1613';
dsply theCharVar;
P1034();
P1285();
P608();
return;