**free

ctl-opt dftactgrp(*no);

dcl-pi P2805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P1714.rpgleinc'
/copy 'qrpgleref/P2070.rpgleinc'

dcl-ds T804 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T804 FROM T804 LIMIT 1;

theCharVar = 'Hello from P2805';
dsply theCharVar;
P1279();
P1714();
P2070();
return;