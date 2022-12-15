**free

ctl-opt dftactgrp(*no);

dcl-pi P1472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds T145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T145 FROM T145 LIMIT 1;

theCharVar = 'Hello from P1472';
dsply theCharVar;
P247();
P1339();
P885();
return;