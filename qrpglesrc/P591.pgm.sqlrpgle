**free

ctl-opt dftactgrp(*no);

dcl-pi P591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds T1237 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1237 FROM T1237 LIMIT 1;

theCharVar = 'Hello from P591';
dsply theCharVar;
P490();
P9();
P306();
return;