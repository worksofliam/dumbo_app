**free

ctl-opt dftactgrp(*no);

dcl-pi P4971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4665.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P2721.rpgleinc'

dcl-ds T282 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T282 FROM T282 LIMIT 1;

theCharVar = 'Hello from P4971';
dsply theCharVar;
P4665();
P364();
P2721();
return;