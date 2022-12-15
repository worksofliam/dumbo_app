**free

ctl-opt dftactgrp(*no);

dcl-pi P946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds T805 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T805 FROM T805 LIMIT 1;

theCharVar = 'Hello from P946';
dsply theCharVar;
P783();
P893();
P372();
return;