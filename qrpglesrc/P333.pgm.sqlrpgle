**free

ctl-opt dftactgrp(*no);

dcl-pi P333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T50 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T50 FROM T50 LIMIT 1;

theCharVar = 'Hello from P333';
dsply theCharVar;
P129();
P173();
P4();
return;