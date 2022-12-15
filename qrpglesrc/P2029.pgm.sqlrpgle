**free

ctl-opt dftactgrp(*no);

dcl-pi P2029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds T891 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T891 FROM T891 LIMIT 1;

theCharVar = 'Hello from P2029';
dsply theCharVar;
P1292();
P579();
P250();
return;