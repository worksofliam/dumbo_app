**free

ctl-opt dftactgrp(*no);

dcl-pi P340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P340';
dsply theCharVar;
P62();
P128();
P274();
return;