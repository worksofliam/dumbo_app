**free

ctl-opt dftactgrp(*no);

dcl-pi P2079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P1963.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T1140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1140 LIMIT 1;

theCharVar = 'Hello from P2079';
dsply theCharVar;
P241();
P1963();
P334();
return;