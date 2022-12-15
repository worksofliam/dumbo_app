**free

ctl-opt dftactgrp(*no);

dcl-pi P971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'

dcl-ds T1012 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1012 FROM T1012 LIMIT 1;

theCharVar = 'Hello from P971';
dsply theCharVar;
P358();
P591();
P554();
return;