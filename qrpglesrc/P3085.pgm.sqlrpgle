**free

ctl-opt dftactgrp(*no);

dcl-pi P3085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2234.rpgleinc'
/copy 'qrpgleref/P3083.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P3085';
dsply theCharVar;
P2234();
P3083();
P856();
return;