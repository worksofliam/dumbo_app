**free

ctl-opt dftactgrp(*no);

dcl-pi P3531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P3531';
dsply theCharVar;
P410();
P486();
P161();
return;