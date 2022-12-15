**free

ctl-opt dftactgrp(*no);

dcl-pi P3084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2813.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P1872.rpgleinc'

dcl-ds theTable extname('T1465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1465 LIMIT 1;

theCharVar = 'Hello from P3084';
dsply theCharVar;
P2813();
P1775();
P1872();
return;