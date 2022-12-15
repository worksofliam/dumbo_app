**free

ctl-opt dftactgrp(*no);

dcl-pi P3064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2294.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds T948 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T948 FROM T948 LIMIT 1;

theCharVar = 'Hello from P3064';
dsply theCharVar;
P2294();
P229();
P965();
return;