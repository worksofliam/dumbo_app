**free

ctl-opt dftactgrp(*no);

dcl-pi P3382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T1564') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1564 LIMIT 1;

theCharVar = 'Hello from P3382';
dsply theCharVar;
P483();
P1706();
P604();
return;