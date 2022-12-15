**free

ctl-opt dftactgrp(*no);

dcl-pi P4642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3226.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P4642';
dsply theCharVar;
P3226();
P376();
P93();
return;