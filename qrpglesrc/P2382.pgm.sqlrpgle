**free

ctl-opt dftactgrp(*no);

dcl-pi P2382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P1928.rpgleinc'
/copy 'qrpgleref/P1837.rpgleinc'

dcl-ds theTable extname('T1030') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1030 LIMIT 1;

theCharVar = 'Hello from P2382';
dsply theCharVar;
P1051();
P1928();
P1837();
return;