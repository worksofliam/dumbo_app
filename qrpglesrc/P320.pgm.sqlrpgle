**free

ctl-opt dftactgrp(*no);

dcl-pi P320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T978 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T978 FROM T978 LIMIT 1;

theCharVar = 'Hello from P320';
dsply theCharVar;
P251();
P112();
P7();
return;