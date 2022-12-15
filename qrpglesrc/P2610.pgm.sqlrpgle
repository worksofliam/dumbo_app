**free

ctl-opt dftactgrp(*no);

dcl-pi P2610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1675.rpgleinc'

dcl-ds theTable extname('T753') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T753 LIMIT 1;

theCharVar = 'Hello from P2610';
dsply theCharVar;
P266();
P52();
P1675();
return;