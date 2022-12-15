**free

ctl-opt dftactgrp(*no);

dcl-pi P214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P214';
dsply theCharVar;
P128();
P100();
P197();
return;