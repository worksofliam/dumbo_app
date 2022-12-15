**free

ctl-opt dftactgrp(*no);

dcl-pi P2837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1511.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P2465.rpgleinc'

dcl-ds theTable extname('T1644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1644 LIMIT 1;

theCharVar = 'Hello from P2837';
dsply theCharVar;
P1511();
P2();
P2465();
return;