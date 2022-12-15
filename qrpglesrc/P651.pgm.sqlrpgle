**free

ctl-opt dftactgrp(*no);

dcl-pi P651;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P478.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds T48 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T48 FROM T48 LIMIT 1;

theCharVar = 'Hello from P651';
dsply theCharVar;
P478();
P516();
P63();
return;