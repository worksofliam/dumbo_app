**free

ctl-opt dftactgrp(*no);

dcl-pi P2810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P2459.rpgleinc'
/copy 'qrpgleref/P2727.rpgleinc'

dcl-ds T1799 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1799 FROM T1799 LIMIT 1;

theCharVar = 'Hello from P2810';
dsply theCharVar;
P1553();
P2459();
P2727();
return;