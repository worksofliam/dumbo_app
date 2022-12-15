**free

ctl-opt dftactgrp(*no);

dcl-pi P2690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P2256.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P2690';
dsply theCharVar;
P2038();
P186();
P2256();
return;