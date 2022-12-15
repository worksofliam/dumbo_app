**free

ctl-opt dftactgrp(*no);

dcl-pi P1425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds T914 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T914 FROM T914 LIMIT 1;

theCharVar = 'Hello from P1425';
dsply theCharVar;
P197();
P873();
P652();
return;