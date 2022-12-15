**free

ctl-opt dftactgrp(*no);

dcl-pi P1121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds T1455 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1455 FROM T1455 LIMIT 1;

theCharVar = 'Hello from P1121';
dsply theCharVar;
P230();
P438();
P760();
return;