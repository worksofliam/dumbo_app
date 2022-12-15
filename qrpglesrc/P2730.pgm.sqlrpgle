**free

ctl-opt dftactgrp(*no);

dcl-pi P2730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P2654.rpgleinc'
/copy 'qrpgleref/P1699.rpgleinc'

dcl-ds theTable extname('T1484') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1484 LIMIT 1;

theCharVar = 'Hello from P2730';
dsply theCharVar;
P54();
P2654();
P1699();
return;