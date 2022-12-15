**free

ctl-opt dftactgrp(*no);

dcl-pi P1589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1467.rpgleinc'
/copy 'qrpgleref/P1012.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds theTable extname('T656') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T656 LIMIT 1;

theCharVar = 'Hello from P1589';
dsply theCharVar;
P1467();
P1012();
P1352();
return;