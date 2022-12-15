**free

ctl-opt dftactgrp(*no);

dcl-pi P2753;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P2670.rpgleinc'
/copy 'qrpgleref/P1063.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P2753';
dsply theCharVar;
P1173();
P2670();
P1063();
return;