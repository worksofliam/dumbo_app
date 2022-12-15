**free

ctl-opt dftactgrp(*no);

dcl-pi P1967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P1940.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P1967';
dsply theCharVar;
P244();
P1940();
P289();
return;