**free

ctl-opt dftactgrp(*no);

dcl-pi P1183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'

dcl-ds T1185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1185 FROM T1185 LIMIT 1;

theCharVar = 'Hello from P1183';
dsply theCharVar;
P968();
P730();
P691();
return;