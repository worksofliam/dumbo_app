**free

ctl-opt dftactgrp(*no);

dcl-pi P733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P481.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'

dcl-ds T221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T221 FROM T221 LIMIT 1;

theCharVar = 'Hello from P733';
dsply theCharVar;
P481();
P286();
P542();
return;