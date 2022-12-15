**free

ctl-opt dftactgrp(*no);

dcl-pi P3462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2398.rpgleinc'
/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P1804.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P3462';
dsply theCharVar;
P2398();
P577();
P1804();
return;