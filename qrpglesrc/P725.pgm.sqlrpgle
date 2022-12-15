**free

ctl-opt dftactgrp(*no);

dcl-pi P725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P725';
dsply theCharVar;
P481();
P128();
P380();
return;