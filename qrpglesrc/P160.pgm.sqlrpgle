**free

ctl-opt dftactgrp(*no);

dcl-pi P160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds T1029 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1029 FROM T1029 LIMIT 1;

theCharVar = 'Hello from P160';
dsply theCharVar;
P75();
P9();
P31();
return;