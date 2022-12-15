**free

ctl-opt dftactgrp(*no);

dcl-pi P757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds T325 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T325 FROM T325 LIMIT 1;

theCharVar = 'Hello from P757';
dsply theCharVar;
P110();
P580();
P558();
return;