**free

ctl-opt dftactgrp(*no);

dcl-pi P1722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P1498.rpgleinc'

dcl-ds theTable extname('T380') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T380 LIMIT 1;

theCharVar = 'Hello from P1722';
dsply theCharVar;
P1365();
P934();
P1498();
return;