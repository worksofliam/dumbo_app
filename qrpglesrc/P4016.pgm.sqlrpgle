**free

ctl-opt dftactgrp(*no);

dcl-pi P4016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2490.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P1280.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P4016';
dsply theCharVar;
P2490();
P161();
P1280();
return;