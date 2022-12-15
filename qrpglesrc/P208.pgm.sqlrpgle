**free

ctl-opt dftactgrp(*no);

dcl-pi P208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T1009 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1009 FROM T1009 LIMIT 1;

theCharVar = 'Hello from P208';
dsply theCharVar;
P142();
P61();
P32();
return;