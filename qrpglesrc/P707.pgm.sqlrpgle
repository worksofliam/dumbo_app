**free

ctl-opt dftactgrp(*no);

dcl-pi P707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P377.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T1022') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1022 LIMIT 1;

theCharVar = 'Hello from P707';
dsply theCharVar;
P377();
P487();
P288();
return;