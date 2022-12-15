**free

ctl-opt dftactgrp(*no);

dcl-pi P5395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1431.rpgleinc'
/copy 'qrpgleref/P4185.rpgleinc'
/copy 'qrpgleref/P2723.rpgleinc'

dcl-ds theTable extname('T254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T254 LIMIT 1;

theCharVar = 'Hello from P5395';
dsply theCharVar;
P1431();
P4185();
P2723();
return;