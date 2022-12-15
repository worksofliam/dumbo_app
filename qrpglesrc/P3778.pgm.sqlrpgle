**free

ctl-opt dftactgrp(*no);

dcl-pi P3778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1660.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P2599.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P3778';
dsply theCharVar;
P1660();
P12();
P2599();
return;