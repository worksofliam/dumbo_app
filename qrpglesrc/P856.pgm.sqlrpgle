**free

ctl-opt dftactgrp(*no);

dcl-pi P856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'

dcl-ds T1747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1747 FROM T1747 LIMIT 1;

theCharVar = 'Hello from P856';
dsply theCharVar;
P83();
P44();
P825();
return;