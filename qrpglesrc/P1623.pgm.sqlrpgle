**free

ctl-opt dftactgrp(*no);

dcl-pi P1623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1618.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T969') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T969 LIMIT 1;

theCharVar = 'Hello from P1623';
dsply theCharVar;
P1618();
P487();
P158();
return;