**free

ctl-opt dftactgrp(*no);

dcl-pi P2419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P1507.rpgleinc'

dcl-ds theTable extname('T961') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T961 LIMIT 1;

theCharVar = 'Hello from P2419';
dsply theCharVar;
P720();
P690();
P1507();
return;