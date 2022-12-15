**free

ctl-opt dftactgrp(*no);

dcl-pi P3627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P2041.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P3627';
dsply theCharVar;
P1378();
P2041();
P1086();
return;