**free

ctl-opt dftactgrp(*no);

dcl-pi P2931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P1730.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds T192 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T192 FROM T192 LIMIT 1;

theCharVar = 'Hello from P2931';
dsply theCharVar;
P728();
P1730();
P101();
return;