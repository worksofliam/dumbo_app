**free

ctl-opt dftactgrp(*no);

dcl-pi P512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds T248 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T248 FROM T248 LIMIT 1;

theCharVar = 'Hello from P512';
dsply theCharVar;
P348();
P337();
P343();
return;