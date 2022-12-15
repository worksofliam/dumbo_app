**free

ctl-opt dftactgrp(*no);

dcl-pi P2460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P2049.rpgleinc'

dcl-ds theTable extname('T1341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1341 LIMIT 1;

theCharVar = 'Hello from P2460';
dsply theCharVar;
P194();
P524();
P2049();
return;