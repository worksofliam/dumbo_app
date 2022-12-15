**free

ctl-opt dftactgrp(*no);

dcl-pi P837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'

dcl-ds T4 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T4 FROM T4 LIMIT 1;

theCharVar = 'Hello from P837';
dsply theCharVar;
P136();
P697();
P713();
return;