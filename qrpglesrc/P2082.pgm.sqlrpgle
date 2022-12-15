**free

ctl-opt dftactgrp(*no);

dcl-pi P2082;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'

dcl-ds T1193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1193 FROM T1193 LIMIT 1;

theCharVar = 'Hello from P2082';
dsply theCharVar;
P1352();
P918();
P762();
return;