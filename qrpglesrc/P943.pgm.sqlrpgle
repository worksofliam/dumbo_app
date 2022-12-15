**free

ctl-opt dftactgrp(*no);

dcl-pi P943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds T778 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T778 FROM T778 LIMIT 1;

theCharVar = 'Hello from P943';
dsply theCharVar;
P191();
P490();
P851();
return;