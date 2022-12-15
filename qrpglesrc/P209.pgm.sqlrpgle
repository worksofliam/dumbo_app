**free

ctl-opt dftactgrp(*no);

dcl-pi P209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P209';
dsply theCharVar;
P131();
P148();
P154();
return;