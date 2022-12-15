**free

ctl-opt dftactgrp(*no);

dcl-pi P3742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2752.rpgleinc'
/copy 'qrpgleref/P2346.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds theTable extname('T112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T112 LIMIT 1;

theCharVar = 'Hello from P3742';
dsply theCharVar;
P2752();
P2346();
P327();
return;