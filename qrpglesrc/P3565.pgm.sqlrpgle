**free

ctl-opt dftactgrp(*no);

dcl-pi P3565;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P3278.rpgleinc'
/copy 'qrpgleref/P2723.rpgleinc'

dcl-ds theTable extname('T698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T698 LIMIT 1;

theCharVar = 'Hello from P3565';
dsply theCharVar;
P320();
P3278();
P2723();
return;