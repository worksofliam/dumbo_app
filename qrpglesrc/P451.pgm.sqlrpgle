**free

ctl-opt dftactgrp(*no);

dcl-pi P451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T29 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T29 FROM T29 LIMIT 1;

theCharVar = 'Hello from P451';
dsply theCharVar;
P142();
P85();
P74();
return;