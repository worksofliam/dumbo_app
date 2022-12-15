**free

ctl-opt dftactgrp(*no);

dcl-pi P350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds T822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T822 FROM T822 LIMIT 1;

theCharVar = 'Hello from P350';
dsply theCharVar;
P256();
P40();
P178();
return;