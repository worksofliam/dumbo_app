**free

ctl-opt dftactgrp(*no);

dcl-pi P341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P341';
dsply theCharVar;
P95();
P42();
P147();
return;