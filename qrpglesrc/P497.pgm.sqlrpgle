**free

ctl-opt dftactgrp(*no);

dcl-pi P497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P209.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'

dcl-ds T1114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1114 FROM T1114 LIMIT 1;

theCharVar = 'Hello from P497';
dsply theCharVar;
P209();
P131();
P290();
return;