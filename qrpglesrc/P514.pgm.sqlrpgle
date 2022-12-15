**free

ctl-opt dftactgrp(*no);

dcl-pi P514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P514';
dsply theCharVar;
P55();
P112();
P352();
return;