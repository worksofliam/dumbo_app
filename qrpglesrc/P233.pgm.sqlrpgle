**free

ctl-opt dftactgrp(*no);

dcl-pi P233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T1071') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1071 LIMIT 1;

theCharVar = 'Hello from P233';
dsply theCharVar;
P79();
P75();
P45();
return;