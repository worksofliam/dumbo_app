**free

ctl-opt dftactgrp(*no);

dcl-pi P938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds T304 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T304 FROM T304 LIMIT 1;

theCharVar = 'Hello from P938';
dsply theCharVar;
P264();
P51();
P93();
return;