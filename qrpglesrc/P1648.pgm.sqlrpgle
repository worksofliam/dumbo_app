**free

ctl-opt dftactgrp(*no);

dcl-pi P1648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1513.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'

dcl-ds T1812 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1812 FROM T1812 LIMIT 1;

theCharVar = 'Hello from P1648';
dsply theCharVar;
P1513();
P1120();
P733();
return;