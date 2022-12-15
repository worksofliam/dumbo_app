**free

ctl-opt dftactgrp(*no);

dcl-pi P957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P482.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P957';
dsply theCharVar;
P482();
P698();
P95();
return;