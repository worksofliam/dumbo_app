**free

ctl-opt dftactgrp(*no);

dcl-pi P796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P399.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds T1056 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1056 FROM T1056 LIMIT 1;

theCharVar = 'Hello from P796';
dsply theCharVar;
P399();
P400();
P41();
return;