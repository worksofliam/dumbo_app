**free

ctl-opt dftactgrp(*no);

dcl-pi P823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds T494 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T494 FROM T494 LIMIT 1;

theCharVar = 'Hello from P823';
dsply theCharVar;
P541();
P192();
P249();
return;