**free

ctl-opt dftactgrp(*no);

dcl-pi P957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P795.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'

dcl-ds theTable extname('T377') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T377 LIMIT 1;

theCharVar = 'Hello from P957';
dsply theCharVar;
P795();
P79();
P651();
return;