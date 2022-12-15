**free

ctl-opt dftactgrp(*no);

dcl-pi P2385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T917 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T917 FROM T917 LIMIT 1;

theCharVar = 'Hello from P2385';
dsply theCharVar;
P1106();
P331();
P9();
return;