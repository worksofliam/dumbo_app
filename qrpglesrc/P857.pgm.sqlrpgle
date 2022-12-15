**free

ctl-opt dftactgrp(*no);

dcl-pi P857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P829.rpgleinc'

dcl-ds T363 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T363 FROM T363 LIMIT 1;

theCharVar = 'Hello from P857';
dsply theCharVar;
P483();
P502();
P829();
return;