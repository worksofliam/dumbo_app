**free

ctl-opt dftactgrp(*no);

dcl-pi P2736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2258.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P2068.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P2736';
dsply theCharVar;
P2258();
P1337();
P2068();
return;