**free

ctl-opt dftactgrp(*no);

dcl-pi P3372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2663.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds T1153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1153 FROM T1153 LIMIT 1;

theCharVar = 'Hello from P3372';
dsply theCharVar;
P2663();
P376();
P1554();
return;