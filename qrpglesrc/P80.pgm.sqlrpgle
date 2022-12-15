**free

ctl-opt dftactgrp(*no);

dcl-pi P80;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T106 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T106 FROM T106 LIMIT 1;

theCharVar = 'Hello from P80';
dsply theCharVar;
P51();
P20();
P22();
return;