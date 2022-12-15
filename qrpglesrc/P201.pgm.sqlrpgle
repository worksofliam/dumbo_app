**free

ctl-opt dftactgrp(*no);

dcl-pi P201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P201';
dsply theCharVar;
P82();
P134();
P0();
return;