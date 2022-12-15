**free

ctl-opt dftactgrp(*no);

dcl-pi P658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T613 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T613 FROM T613 LIMIT 1;

theCharVar = 'Hello from P658';
dsply theCharVar;
P134();
P516();
P196();
return;