**free

ctl-opt dftactgrp(*no);

dcl-pi P562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'

dcl-ds T281 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T281 FROM T281 LIMIT 1;

theCharVar = 'Hello from P562';
dsply theCharVar;
P532();
P527();
P537();
return;