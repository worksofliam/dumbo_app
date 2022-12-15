**free

ctl-opt dftactgrp(*no);

dcl-pi P409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P409';
dsply theCharVar;
P333();
P161();
P4();
return;