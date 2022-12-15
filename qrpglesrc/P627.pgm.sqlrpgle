**free

ctl-opt dftactgrp(*no);

dcl-pi P627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'

dcl-ds T472 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T472 FROM T472 LIMIT 1;

theCharVar = 'Hello from P627';
dsply theCharVar;
P188();
P255();
P437();
return;