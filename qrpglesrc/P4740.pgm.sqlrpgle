**free

ctl-opt dftactgrp(*no);

dcl-pi P4740;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P4649.rpgleinc'
/copy 'qrpgleref/P2207.rpgleinc'

dcl-ds theTable extname('T1785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1785 LIMIT 1;

theCharVar = 'Hello from P4740';
dsply theCharVar;
P342();
P4649();
P2207();
return;