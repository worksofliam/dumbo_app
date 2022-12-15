**free

ctl-opt dftactgrp(*no);

dcl-pi P1806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1577.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'

dcl-ds T665 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T665 FROM T665 LIMIT 1;

theCharVar = 'Hello from P1806';
dsply theCharVar;
P1577();
P1259();
P1179();
return;