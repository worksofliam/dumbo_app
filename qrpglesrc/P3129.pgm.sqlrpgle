**free

ctl-opt dftactgrp(*no);

dcl-pi P3129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P1835.rpgleinc'
/copy 'qrpgleref/P2901.rpgleinc'

dcl-ds theTable extname('T1693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1693 LIMIT 1;

theCharVar = 'Hello from P3129';
dsply theCharVar;
P2274();
P1835();
P2901();
return;