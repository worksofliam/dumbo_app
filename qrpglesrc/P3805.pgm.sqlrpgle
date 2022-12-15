**free

ctl-opt dftactgrp(*no);

dcl-pi P3805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2188.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'
/copy 'qrpgleref/P3089.rpgleinc'

dcl-ds T673 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T673 FROM T673 LIMIT 1;

theCharVar = 'Hello from P3805';
dsply theCharVar;
P2188();
P2149();
P3089();
return;