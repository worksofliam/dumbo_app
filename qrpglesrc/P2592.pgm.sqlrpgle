**free

ctl-opt dftactgrp(*no);

dcl-pi P2592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1523.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'
/copy 'qrpgleref/P2157.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P2592';
dsply theCharVar;
P1523();
P356();
P2157();
return;