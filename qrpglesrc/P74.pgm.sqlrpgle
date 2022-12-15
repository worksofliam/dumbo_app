**free

ctl-opt dftactgrp(*no);

dcl-pi P74;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds T218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T218 FROM T218 LIMIT 1;

theCharVar = 'Hello from P74';
dsply theCharVar;
P51();
P52();
P4();
return;