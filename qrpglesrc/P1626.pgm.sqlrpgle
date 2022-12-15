**free

ctl-opt dftactgrp(*no);

dcl-pi P1626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'

dcl-ds T785 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T785 FROM T785 LIMIT 1;

theCharVar = 'Hello from P1626';
dsply theCharVar;
P1621();
P1110();
P1471();
return;