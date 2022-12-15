**free

ctl-opt dftactgrp(*no);

dcl-pi P196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'

dcl-ds T257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T257 FROM T257 LIMIT 1;

theCharVar = 'Hello from P196';
dsply theCharVar;
P182();
P60();
P170();
return;