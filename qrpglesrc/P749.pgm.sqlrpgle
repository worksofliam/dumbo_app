**free

ctl-opt dftactgrp(*no);

dcl-pi P749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds T121 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T121 FROM T121 LIMIT 1;

theCharVar = 'Hello from P749';
dsply theCharVar;
P716();
P448();
P558();
return;