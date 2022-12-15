**free

ctl-opt dftactgrp(*no);

dcl-pi P3059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'

dcl-ds theTable extname('T257') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T257 LIMIT 1;

theCharVar = 'Hello from P3059';
dsply theCharVar;
P1081();
P224();
P1339();
return;