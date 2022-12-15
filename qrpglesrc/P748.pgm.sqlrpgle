**free

ctl-opt dftactgrp(*no);

dcl-pi P748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds T30 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T30 FROM T30 LIMIT 1;

theCharVar = 'Hello from P748';
dsply theCharVar;
P83();
P262();
P516();
return;