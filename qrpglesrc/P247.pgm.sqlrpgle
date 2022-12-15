**free

ctl-opt dftactgrp(*no);

dcl-pi P247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds T1838 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1838 FROM T1838 LIMIT 1;

theCharVar = 'Hello from P247';
dsply theCharVar;
P183();
P36();
P90();
return;