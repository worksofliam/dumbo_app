**free

ctl-opt dftactgrp(*no);

dcl-pi P645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds T337 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T337 FROM T337 LIMIT 1;

theCharVar = 'Hello from P645';
dsply theCharVar;
P496();
P514();
P643();
return;