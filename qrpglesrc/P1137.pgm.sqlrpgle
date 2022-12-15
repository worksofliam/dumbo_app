**free

ctl-opt dftactgrp(*no);

dcl-pi P1137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P925.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T1613') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1613 LIMIT 1;

theCharVar = 'Hello from P1137';
dsply theCharVar;
P925();
P159();
P168();
return;