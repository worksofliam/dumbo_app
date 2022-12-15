**free

ctl-opt dftactgrp(*no);

dcl-pi P2449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P1525.rpgleinc'

dcl-ds T963 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T963 FROM T963 LIMIT 1;

theCharVar = 'Hello from P2449';
dsply theCharVar;
P2236();
P926();
P1525();
return;