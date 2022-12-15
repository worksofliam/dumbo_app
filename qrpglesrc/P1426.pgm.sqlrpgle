**free

ctl-opt dftactgrp(*no);

dcl-pi P1426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds T306 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T306 FROM T306 LIMIT 1;

theCharVar = 'Hello from P1426';
dsply theCharVar;
P1261();
P1277();
P37();
return;