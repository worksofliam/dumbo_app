**free

ctl-opt dftactgrp(*no);

dcl-pi P4077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P2335.rpgleinc'
/copy 'qrpgleref/P3409.rpgleinc'

dcl-ds theTable extname('T1022') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1022 LIMIT 1;

theCharVar = 'Hello from P4077';
dsply theCharVar;
P101();
P2335();
P3409();
return;