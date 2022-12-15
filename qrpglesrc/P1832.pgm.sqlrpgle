**free

ctl-opt dftactgrp(*no);

dcl-pi P1832;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P1817.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'

dcl-ds theTable extname('T223') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T223 LIMIT 1;

theCharVar = 'Hello from P1832';
dsply theCharVar;
P881();
P1817();
P1565();
return;