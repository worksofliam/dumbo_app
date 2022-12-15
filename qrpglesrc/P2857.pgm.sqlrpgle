**free

ctl-opt dftactgrp(*no);

dcl-pi P2857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P2497.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds T362 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T362 FROM T362 LIMIT 1;

theCharVar = 'Hello from P2857';
dsply theCharVar;
P663();
P2497();
P278();
return;