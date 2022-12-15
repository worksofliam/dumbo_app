**free

ctl-opt dftactgrp(*no);

dcl-pi P2345;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P1093.rpgleinc'
/copy 'qrpgleref/P1966.rpgleinc'

dcl-ds T1466 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1466 FROM T1466 LIMIT 1;

theCharVar = 'Hello from P2345';
dsply theCharVar;
P962();
P1093();
P1966();
return;