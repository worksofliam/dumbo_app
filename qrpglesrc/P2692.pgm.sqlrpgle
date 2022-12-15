**free

ctl-opt dftactgrp(*no);

dcl-pi P2692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1088.rpgleinc'

dcl-ds theTable extname('T1069') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1069 LIMIT 1;

theCharVar = 'Hello from P2692';
dsply theCharVar;
P393();
P423();
P1088();
return;