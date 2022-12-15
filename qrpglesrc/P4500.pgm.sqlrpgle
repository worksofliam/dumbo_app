**free

ctl-opt dftactgrp(*no);

dcl-pi P4500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P2223.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P4500';
dsply theCharVar;
P204();
P2223();
P697();
return;