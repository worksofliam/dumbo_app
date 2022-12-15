**free

ctl-opt dftactgrp(*no);

dcl-pi P5300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4059.rpgleinc'
/copy 'qrpgleref/P3854.rpgleinc'
/copy 'qrpgleref/P4625.rpgleinc'

dcl-ds theTable extname('T189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T189 LIMIT 1;

theCharVar = 'Hello from P5300';
dsply theCharVar;
P4059();
P3854();
P4625();
return;