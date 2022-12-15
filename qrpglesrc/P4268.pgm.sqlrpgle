**free

ctl-opt dftactgrp(*no);

dcl-pi P4268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P529.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P3562.rpgleinc'

dcl-ds T962 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T962 FROM T962 LIMIT 1;

theCharVar = 'Hello from P4268';
dsply theCharVar;
P529();
P868();
P3562();
return;