**free

ctl-opt dftactgrp(*no);

dcl-pi P1177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1138.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'

dcl-ds T1041 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1041 FROM T1041 LIMIT 1;

theCharVar = 'Hello from P1177';
dsply theCharVar;
P1138();
P538();
P809();
return;