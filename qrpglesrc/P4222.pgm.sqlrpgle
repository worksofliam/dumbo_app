**free

ctl-opt dftactgrp(*no);

dcl-pi P4222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1854.rpgleinc'
/copy 'qrpgleref/P3983.rpgleinc'
/copy 'qrpgleref/P849.rpgleinc'

dcl-ds theTable extname('T489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T489 LIMIT 1;

theCharVar = 'Hello from P4222';
dsply theCharVar;
P1854();
P3983();
P849();
return;