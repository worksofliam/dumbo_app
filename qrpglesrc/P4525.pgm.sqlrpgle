**free

ctl-opt dftactgrp(*no);

dcl-pi P4525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1810.rpgleinc'
/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P4525';
dsply theCharVar;
P1810();
P1604();
P523();
return;