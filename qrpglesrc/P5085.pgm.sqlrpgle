**free

ctl-opt dftactgrp(*no);

dcl-pi P5085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3399.rpgleinc'
/copy 'qrpgleref/P2376.rpgleinc'
/copy 'qrpgleref/P4899.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P5085';
dsply theCharVar;
P3399();
P2376();
P4899();
return;