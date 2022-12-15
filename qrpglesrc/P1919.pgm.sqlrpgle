**free

ctl-opt dftactgrp(*no);

dcl-pi P1919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1867.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'

dcl-ds theTable extname('T1151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1151 LIMIT 1;

theCharVar = 'Hello from P1919';
dsply theCharVar;
P1867();
P288();
P1573();
return;