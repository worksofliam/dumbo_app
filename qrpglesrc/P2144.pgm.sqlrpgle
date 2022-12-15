**free

ctl-opt dftactgrp(*no);

dcl-pi P2144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1822.rpgleinc'
/copy 'qrpgleref/P1564.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P2144';
dsply theCharVar;
P1822();
P1564();
P422();
return;