**free

ctl-opt dftactgrp(*no);

dcl-pi P1006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds T1090 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1090 FROM T1090 LIMIT 1;

theCharVar = 'Hello from P1006';
dsply theCharVar;
P32();
P214();
P573();
return;