**free

ctl-opt dftactgrp(*no);

dcl-pi P2925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P2795.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P2925';
dsply theCharVar;
P713();
P2795();
P292();
return;