**free

ctl-opt dftactgrp(*no);

dcl-pi P405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds T229 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T229 FROM T229 LIMIT 1;

theCharVar = 'Hello from P405';
dsply theCharVar;
P214();
P188();
P354();
return;