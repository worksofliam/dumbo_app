**free

ctl-opt dftactgrp(*no);

dcl-pi P2935;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2921.rpgleinc'
/copy 'qrpgleref/P1589.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'

dcl-ds T544 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T544 FROM T544 LIMIT 1;

theCharVar = 'Hello from P2935';
dsply theCharVar;
P2921();
P1589();
P811();
return;