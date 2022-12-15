**free

ctl-opt dftactgrp(*no);

dcl-pi P2805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2460.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'

dcl-ds T263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T263 FROM T263 LIMIT 1;

theCharVar = 'Hello from P2805';
dsply theCharVar;
P2460();
P601();
P200();
return;