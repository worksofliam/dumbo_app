**free

ctl-opt dftactgrp(*no);

dcl-pi P2987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2346.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P2422.rpgleinc'

dcl-ds T233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T233 FROM T233 LIMIT 1;

theCharVar = 'Hello from P2987';
dsply theCharVar;
P2346();
P419();
P2422();
return;