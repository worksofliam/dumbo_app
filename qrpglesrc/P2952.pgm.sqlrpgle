**free

ctl-opt dftactgrp(*no);

dcl-pi P2952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P2626.rpgleinc'

dcl-ds T1056 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1056 FROM T1056 LIMIT 1;

theCharVar = 'Hello from P2952';
dsply theCharVar;
P573();
P439();
P2626();
return;