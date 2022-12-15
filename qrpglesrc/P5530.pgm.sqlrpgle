**free

ctl-opt dftactgrp(*no);

dcl-pi P5530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5307.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'
/copy 'qrpgleref/P2448.rpgleinc'

dcl-ds theTable extname('T1371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1371 LIMIT 1;

theCharVar = 'Hello from P5530';
dsply theCharVar;
P5307();
P2085();
P2448();
return;