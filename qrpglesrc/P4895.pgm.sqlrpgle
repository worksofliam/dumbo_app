**free

ctl-opt dftactgrp(*no);

dcl-pi P4895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P3167.rpgleinc'
/copy 'qrpgleref/P1495.rpgleinc'

dcl-ds theTable extname('T1831') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1831 LIMIT 1;

theCharVar = 'Hello from P4895';
dsply theCharVar;
P60();
P3167();
P1495();
return;