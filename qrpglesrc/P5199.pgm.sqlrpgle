**free

ctl-opt dftactgrp(*no);

dcl-pi P5199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P5199';
dsply theCharVar;
P689();
P787();
P1162();
return;