**free

ctl-opt dftactgrp(*no);

dcl-pi P3100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'

dcl-ds theTable extname('T1343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1343 LIMIT 1;

theCharVar = 'Hello from P3100';
dsply theCharVar;
P2044();
P2179();
P455();
return;