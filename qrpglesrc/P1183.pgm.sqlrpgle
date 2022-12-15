**free

ctl-opt dftactgrp(*no);

dcl-pi P1183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

dcl-ds T347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T347 FROM T347 LIMIT 1;

theCharVar = 'Hello from P1183';
dsply theCharVar;
P180();
P225();
P1033();
return;