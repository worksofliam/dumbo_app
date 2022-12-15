**free

ctl-opt dftactgrp(*no);

dcl-pi P5137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2934.rpgleinc'
/copy 'qrpgleref/P1898.rpgleinc'
/copy 'qrpgleref/P3529.rpgleinc'

dcl-ds theTable extname('T1340') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1340 LIMIT 1;

theCharVar = 'Hello from P5137';
dsply theCharVar;
P2934();
P1898();
P3529();
return;