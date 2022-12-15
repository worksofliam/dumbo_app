**free

ctl-opt dftactgrp(*no);

dcl-pi P1358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds T1209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1209 FROM T1209 LIMIT 1;

theCharVar = 'Hello from P1358';
dsply theCharVar;
P180();
P811();
P976();
return;