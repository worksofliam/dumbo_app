**free

ctl-opt dftactgrp(*no);

dcl-pi P2286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1816.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P2246.rpgleinc'

dcl-ds T1102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1102 FROM T1102 LIMIT 1;

theCharVar = 'Hello from P2286';
dsply theCharVar;
P1816();
P729();
P2246();
return;