**free

ctl-opt dftactgrp(*no);

dcl-pi P161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds T1671 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1671 FROM T1671 LIMIT 1;

theCharVar = 'Hello from P161';
dsply theCharVar;
P96();
P157();
P83();
return;