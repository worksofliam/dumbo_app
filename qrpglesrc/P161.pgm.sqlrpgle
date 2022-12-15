**free

ctl-opt dftactgrp(*no);

dcl-pi P161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T413 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T413 FROM T413 LIMIT 1;

theCharVar = 'Hello from P161';
dsply theCharVar;
P78();
P95();
P49();
return;