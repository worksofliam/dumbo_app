**free

ctl-opt dftactgrp(*no);

dcl-pi P2612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'

dcl-ds T440 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T440 FROM T440 LIMIT 1;

theCharVar = 'Hello from P2612';
dsply theCharVar;
P701();
P1235();
P332();
return;