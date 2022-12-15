**free

ctl-opt dftactgrp(*no);

dcl-pi P2212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P1005.rpgleinc'

dcl-ds theTable extname('T754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T754 LIMIT 1;

theCharVar = 'Hello from P2212';
dsply theCharVar;
P1145();
P509();
P1005();
return;