**free

ctl-opt dftactgrp(*no);

dcl-pi P2041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P1002.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P2041';
dsply theCharVar;
P729();
P932();
P1002();
return;