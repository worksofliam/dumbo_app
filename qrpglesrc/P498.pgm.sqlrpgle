**free

ctl-opt dftactgrp(*no);

dcl-pi P498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P330.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T493 LIMIT 1;

theCharVar = 'Hello from P498';
dsply theCharVar;
P161();
P330();
P2();
return;