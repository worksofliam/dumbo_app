**free

ctl-opt dftactgrp(*no);

dcl-pi P1526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds T1074 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1074 FROM T1074 LIMIT 1;

theCharVar = 'Hello from P1526';
dsply theCharVar;
P475();
P624();
P533();
return;