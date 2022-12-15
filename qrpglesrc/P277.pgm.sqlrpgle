**free

ctl-opt dftactgrp(*no);

dcl-pi P277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'

dcl-ds T281 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T281 FROM T281 LIMIT 1;

theCharVar = 'Hello from P277';
dsply theCharVar;
P21();
P187();
P153();
return;