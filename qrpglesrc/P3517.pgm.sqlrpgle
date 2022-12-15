**free

ctl-opt dftactgrp(*no);

dcl-pi P3517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3457.rpgleinc'
/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P2532.rpgleinc'

dcl-ds theTable extname('T858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T858 LIMIT 1;

theCharVar = 'Hello from P3517';
dsply theCharVar;
P3457();
P495();
P2532();
return;