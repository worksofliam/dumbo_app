**free

ctl-opt dftactgrp(*no);

dcl-pi P2716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1426.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T1104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1104 LIMIT 1;

theCharVar = 'Hello from P2716';
dsply theCharVar;
P1426();
P573();
P176();
return;