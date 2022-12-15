**free

ctl-opt dftactgrp(*no);

dcl-pi P487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P487';
dsply theCharVar;
P461();
P232();
P55();
return;