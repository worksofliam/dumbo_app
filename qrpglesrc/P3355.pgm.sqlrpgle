**free

ctl-opt dftactgrp(*no);

dcl-pi P3355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P2926.rpgleinc'

dcl-ds theTable extname('T495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T495 LIMIT 1;

theCharVar = 'Hello from P3355';
dsply theCharVar;
P82();
P61();
P2926();
return;