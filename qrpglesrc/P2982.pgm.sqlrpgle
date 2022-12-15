**free

ctl-opt dftactgrp(*no);

dcl-pi P2982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P2982';
dsply theCharVar;
P1073();
P1104();
P1042();
return;