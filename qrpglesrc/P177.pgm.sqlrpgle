**free

ctl-opt dftactgrp(*no);

dcl-pi P177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds T929 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T929 FROM T929 LIMIT 1;

theCharVar = 'Hello from P177';
dsply theCharVar;
P138();
P63();
P136();
return;