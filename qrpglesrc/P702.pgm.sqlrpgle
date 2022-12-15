**free

ctl-opt dftactgrp(*no);

dcl-pi P702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds T747 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T747 FROM T747 LIMIT 1;

theCharVar = 'Hello from P702';
dsply theCharVar;
P517();
P68();
P121();
return;