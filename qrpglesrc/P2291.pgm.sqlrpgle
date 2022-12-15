**free

ctl-opt dftactgrp(*no);

dcl-pi P2291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P881.rpgleinc'

dcl-ds theTable extname('T1166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1166 LIMIT 1;

theCharVar = 'Hello from P2291';
dsply theCharVar;
P2029();
P309();
P881();
return;