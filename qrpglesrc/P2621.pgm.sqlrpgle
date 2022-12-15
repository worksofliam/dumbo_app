**free

ctl-opt dftactgrp(*no);

dcl-pi P2621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1860.rpgleinc'
/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'

dcl-ds T793 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T793 FROM T793 LIMIT 1;

theCharVar = 'Hello from P2621';
dsply theCharVar;
P1860();
P1437();
P654();
return;