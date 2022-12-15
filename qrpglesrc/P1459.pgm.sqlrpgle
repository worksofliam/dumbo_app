**free

ctl-opt dftactgrp(*no);

dcl-pi P1459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'

dcl-ds T1638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1638 FROM T1638 LIMIT 1;

theCharVar = 'Hello from P1459';
dsply theCharVar;
P1418();
P226();
P1192();
return;