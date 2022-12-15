**free

ctl-opt dftactgrp(*no);

dcl-pi P290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds T837 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T837 FROM T837 LIMIT 1;

theCharVar = 'Hello from P290';
dsply theCharVar;
P2();
P250();
P125();
return;