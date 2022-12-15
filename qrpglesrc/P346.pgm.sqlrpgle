**free

ctl-opt dftactgrp(*no);

dcl-pi P346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'

dcl-ds T261 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T261 FROM T261 LIMIT 1;

theCharVar = 'Hello from P346';
dsply theCharVar;
P149();
P30();
P197();
return;