**free

ctl-opt dftactgrp(*no);

dcl-pi P4661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1983.rpgleinc'
/copy 'qrpgleref/P4241.rpgleinc'
/copy 'qrpgleref/P4214.rpgleinc'

dcl-ds theTable extname('T1080') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1080 LIMIT 1;

theCharVar = 'Hello from P4661';
dsply theCharVar;
P1983();
P4241();
P4214();
return;