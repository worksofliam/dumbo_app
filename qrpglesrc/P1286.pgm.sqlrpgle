**free

ctl-opt dftactgrp(*no);

dcl-pi P1286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'

dcl-ds T1690 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1690 FROM T1690 LIMIT 1;

theCharVar = 'Hello from P1286';
dsply theCharVar;
P601();
P380();
P1162();
return;