**free

ctl-opt dftactgrp(*no);

dcl-pi P687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'

dcl-ds T297 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T297 FROM T297 LIMIT 1;

theCharVar = 'Hello from P687';
dsply theCharVar;
P230();
P439();
P217();
return;