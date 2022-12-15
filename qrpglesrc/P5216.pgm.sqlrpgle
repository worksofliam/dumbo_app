**free

ctl-opt dftactgrp(*no);

dcl-pi P5216;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4641.rpgleinc'
/copy 'qrpgleref/P1780.rpgleinc'
/copy 'qrpgleref/P1437.rpgleinc'

dcl-ds T1219 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1219 FROM T1219 LIMIT 1;

theCharVar = 'Hello from P5216';
dsply theCharVar;
P4641();
P1780();
P1437();
return;