**free

ctl-opt dftactgrp(*no);

dcl-pi P2759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P1230.rpgleinc'
/copy 'qrpgleref/P2746.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P2759';
dsply theCharVar;
P890();
P1230();
P2746();
return;