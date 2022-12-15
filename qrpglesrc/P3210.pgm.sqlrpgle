**free

ctl-opt dftactgrp(*no);

dcl-pi P3210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2328.rpgleinc'
/copy 'qrpgleref/P2872.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds theTable extname('T1289') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1289 LIMIT 1;

theCharVar = 'Hello from P3210';
dsply theCharVar;
P2328();
P2872();
P165();
return;