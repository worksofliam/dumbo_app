**free

ctl-opt dftactgrp(*no);

dcl-pi P2500;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P786.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P2500';
dsply theCharVar;
P2300();
P786();
P967();
return;