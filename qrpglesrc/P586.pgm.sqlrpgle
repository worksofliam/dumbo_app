**free

ctl-opt dftactgrp(*no);

dcl-pi P586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P586';
dsply theCharVar;
P505();
P84();
P300();
return;