**free

ctl-opt dftactgrp(*no);

dcl-pi P2448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P1716.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1254 LIMIT 1;

theCharVar = 'Hello from P2448';
dsply theCharVar;
P1798();
P1716();
P29();
return;