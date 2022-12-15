**free

ctl-opt dftactgrp(*no);

dcl-pi P1810;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds T637 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T637 FROM T637 LIMIT 1;

theCharVar = 'Hello from P1810';
dsply theCharVar;
P1504();
P1033();
P584();
return;