**free

ctl-opt dftactgrp(*no);

dcl-pi P3667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2328.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P3480.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P3667';
dsply theCharVar;
P2328();
P921();
P3480();
return;