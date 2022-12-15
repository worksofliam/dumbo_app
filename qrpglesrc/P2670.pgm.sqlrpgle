**free

ctl-opt dftactgrp(*no);

dcl-pi P2670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1294.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds T428 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T428 FROM T428 LIMIT 1;

theCharVar = 'Hello from P2670';
dsply theCharVar;
P1294();
P637();
P893();
return;