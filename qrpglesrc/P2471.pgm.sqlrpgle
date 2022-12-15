**free

ctl-opt dftactgrp(*no);

dcl-pi P2471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2093.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'

dcl-ds theTable extname('T1819') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1819 LIMIT 1;

theCharVar = 'Hello from P2471';
dsply theCharVar;
P2093();
P1038();
P2409();
return;