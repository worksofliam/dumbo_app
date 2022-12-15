**free

ctl-opt dftactgrp(*no);

dcl-pi P223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds T128 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T128 FROM T128 LIMIT 1;

theCharVar = 'Hello from P223';
dsply theCharVar;
P133();
P7();
P119();
return;