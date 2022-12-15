**free

ctl-opt dftactgrp(*no);

dcl-pi P2439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2172.rpgleinc'
/copy 'qrpgleref/P1586.rpgleinc'
/copy 'qrpgleref/P2383.rpgleinc'

dcl-ds theTable extname('T187') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T187 LIMIT 1;

theCharVar = 'Hello from P2439';
dsply theCharVar;
P2172();
P1586();
P2383();
return;