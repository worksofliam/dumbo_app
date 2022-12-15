**free

ctl-opt dftactgrp(*no);

dcl-pi P934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'

dcl-ds T1788 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1788 FROM T1788 LIMIT 1;

theCharVar = 'Hello from P934';
dsply theCharVar;
P186();
P832();
P145();
return;