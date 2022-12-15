**free

ctl-opt dftactgrp(*no);

dcl-pi P5524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3380.rpgleinc'
/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P2746.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P5524';
dsply theCharVar;
P3380();
P1322();
P2746();
return;