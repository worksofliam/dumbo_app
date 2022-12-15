**free

ctl-opt dftactgrp(*no);

dcl-pi P653;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds T134 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T134 FROM T134 LIMIT 1;

theCharVar = 'Hello from P653';
dsply theCharVar;
P652();
P372();
P420();
return;