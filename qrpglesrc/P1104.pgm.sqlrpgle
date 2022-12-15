**free

ctl-opt dftactgrp(*no);

dcl-pi P1104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P1104';
dsply theCharVar;
P146();
P936();
P963();
return;