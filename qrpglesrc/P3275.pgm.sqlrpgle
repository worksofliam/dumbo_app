**free

ctl-opt dftactgrp(*no);

dcl-pi P3275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2818.rpgleinc'
/copy 'qrpgleref/P1890.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T423') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T423 LIMIT 1;

theCharVar = 'Hello from P3275';
dsply theCharVar;
P2818();
P1890();
P274();
return;