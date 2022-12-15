**free

ctl-opt dftactgrp(*no);

dcl-pi P4285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1819.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P1851.rpgleinc'

dcl-ds theTable extname('T642') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T642 LIMIT 1;

theCharVar = 'Hello from P4285';
dsply theCharVar;
P1819();
P337();
P1851();
return;