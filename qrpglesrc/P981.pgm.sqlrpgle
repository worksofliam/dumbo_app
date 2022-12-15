**free

ctl-opt dftactgrp(*no);

dcl-pi P981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'

dcl-ds T1708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1708 FROM T1708 LIMIT 1;

theCharVar = 'Hello from P981';
dsply theCharVar;
P522();
P8();
P444();
return;