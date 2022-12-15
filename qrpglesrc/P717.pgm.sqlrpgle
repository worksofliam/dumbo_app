**free

ctl-opt dftactgrp(*no);

dcl-pi P717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds T1745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1745 FROM T1745 LIMIT 1;

theCharVar = 'Hello from P717';
dsply theCharVar;
P441();
P266();
P316();
return;