**free

ctl-opt dftactgrp(*no);

dcl-pi P1552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P1105.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds T409 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T409 FROM T409 LIMIT 1;

theCharVar = 'Hello from P1552';
dsply theCharVar;
P266();
P1105();
P172();
return;