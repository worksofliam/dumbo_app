**free

ctl-opt dftactgrp(*no);

dcl-pi P4956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3620.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'

dcl-ds theTable extname('T936') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T936 LIMIT 1;

theCharVar = 'Hello from P4956';
dsply theCharVar;
P3620();
P408();
P330();
return;