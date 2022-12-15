**free

ctl-opt dftactgrp(*no);

dcl-pi P2126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P1858.rpgleinc'

dcl-ds theTable extname('T551') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T551 LIMIT 1;

theCharVar = 'Hello from P2126';
dsply theCharVar;
P963();
P1660();
P1858();
return;