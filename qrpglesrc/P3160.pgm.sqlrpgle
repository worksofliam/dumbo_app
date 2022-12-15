**free

ctl-opt dftactgrp(*no);

dcl-pi P3160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P3160';
dsply theCharVar;
P374();
P22();
P321();
return;