**free

ctl-opt dftactgrp(*no);

dcl-pi P2397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2195.rpgleinc'
/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P1712.rpgleinc'

dcl-ds theTable extname('T1301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1301 LIMIT 1;

theCharVar = 'Hello from P2397';
dsply theCharVar;
P2195();
P794();
P1712();
return;