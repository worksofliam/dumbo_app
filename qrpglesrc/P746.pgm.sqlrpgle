**free

ctl-opt dftactgrp(*no);

dcl-pi P746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P746';
dsply theCharVar;
P460();
P131();
P387();
return;