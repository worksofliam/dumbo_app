**free

ctl-opt dftactgrp(*no);

dcl-pi P1568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1211.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'

dcl-ds T923 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T923 FROM T923 LIMIT 1;

theCharVar = 'Hello from P1568';
dsply theCharVar;
P1211();
P59();
P166();
return;