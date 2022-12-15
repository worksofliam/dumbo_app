**free

ctl-opt dftactgrp(*no);

dcl-pi P189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T1158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1158 LIMIT 1;

theCharVar = 'Hello from P189';
dsply theCharVar;
P113();
P76();
P175();
return;