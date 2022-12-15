**free

ctl-opt dftactgrp(*no);

dcl-pi P2502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'

dcl-ds T975 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T975 FROM T975 LIMIT 1;

theCharVar = 'Hello from P2502';
dsply theCharVar;
P818();
P2439();
P1465();
return;