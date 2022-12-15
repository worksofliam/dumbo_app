**free

ctl-opt dftactgrp(*no);

dcl-pi P1608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P1053.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P1608';
dsply theCharVar;
P756();
P1053();
P883();
return;