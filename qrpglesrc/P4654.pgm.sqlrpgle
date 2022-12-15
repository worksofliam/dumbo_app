**free

ctl-opt dftactgrp(*no);

dcl-pi P4654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P2055.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'

dcl-ds T1326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1326 FROM T1326 LIMIT 1;

theCharVar = 'Hello from P4654';
dsply theCharVar;
P784();
P2055();
P1337();
return;