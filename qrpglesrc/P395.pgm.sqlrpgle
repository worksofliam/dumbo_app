**free

ctl-opt dftactgrp(*no);

dcl-pi P395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds T273 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T273 FROM T273 LIMIT 1;

theCharVar = 'Hello from P395';
dsply theCharVar;
P70();
P153();
P154();
return;