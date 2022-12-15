**free

ctl-opt dftactgrp(*no);

dcl-pi P4787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P2965.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'

dcl-ds theTable extname('T884') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T884 LIMIT 1;

theCharVar = 'Hello from P4787';
dsply theCharVar;
P282();
P2965();
P2278();
return;