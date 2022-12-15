**free

ctl-opt dftactgrp(*no);

dcl-pi P426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P426';
dsply theCharVar;
P283();
P321();
P373();
return;