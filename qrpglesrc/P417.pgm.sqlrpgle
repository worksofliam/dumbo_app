**free

ctl-opt dftactgrp(*no);

dcl-pi P417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds T391 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T391 FROM T391 LIMIT 1;

theCharVar = 'Hello from P417';
dsply theCharVar;
P149();
P351();
P140();
return;