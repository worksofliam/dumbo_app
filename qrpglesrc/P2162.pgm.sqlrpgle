**free

ctl-opt dftactgrp(*no);

dcl-pi P2162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P1956.rpgleinc'
/copy 'qrpgleref/P2027.rpgleinc'

dcl-ds theTable extname('T1260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1260 LIMIT 1;

theCharVar = 'Hello from P2162';
dsply theCharVar;
P316();
P1956();
P2027();
return;