**free

ctl-opt dftactgrp(*no);

dcl-pi P962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P665.rpgleinc'

dcl-ds T1810 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1810 FROM T1810 LIMIT 1;

theCharVar = 'Hello from P962';
dsply theCharVar;
P427();
P585();
P665();
return;