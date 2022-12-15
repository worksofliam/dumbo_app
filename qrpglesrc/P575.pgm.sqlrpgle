**free

ctl-opt dftactgrp(*no);

dcl-pi P575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'

dcl-ds T170 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T170 FROM T170 LIMIT 1;

theCharVar = 'Hello from P575';
dsply theCharVar;
P555();
P460();
P196();
return;