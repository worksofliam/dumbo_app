**free

ctl-opt dftactgrp(*no);

dcl-pi P4530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1486.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P3815.rpgleinc'

dcl-ds theTable extname('T704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T704 LIMIT 1;

theCharVar = 'Hello from P4530';
dsply theCharVar;
P1486();
P723();
P3815();
return;