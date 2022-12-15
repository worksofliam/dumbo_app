**free

ctl-opt dftactgrp(*no);

dcl-pi P388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T1631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1631 LIMIT 1;

theCharVar = 'Hello from P388';
dsply theCharVar;
P149();
P237();
P95();
return;