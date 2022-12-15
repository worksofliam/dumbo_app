**free

ctl-opt dftactgrp(*no);

dcl-pi P1459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T336 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T336 FROM T336 LIMIT 1;

theCharVar = 'Hello from P1459';
dsply theCharVar;
P39();
P972();
P23();
return;