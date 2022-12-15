**free

ctl-opt dftactgrp(*no);

dcl-pi P625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds T112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T112 FROM T112 LIMIT 1;

theCharVar = 'Hello from P625';
dsply theCharVar;
P568();
P460();
P222();
return;