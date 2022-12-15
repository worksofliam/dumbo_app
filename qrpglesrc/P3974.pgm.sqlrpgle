**free

ctl-opt dftactgrp(*no);

dcl-pi P3974;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2426.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'

dcl-ds T1514 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1514 FROM T1514 LIMIT 1;

theCharVar = 'Hello from P3974';
dsply theCharVar;
P2426();
P551();
P2410();
return;