**free

ctl-opt dftactgrp(*no);

dcl-pi P2726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P1072.rpgleinc'
/copy 'qrpgleref/P813.rpgleinc'

dcl-ds T1706 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1706 FROM T1706 LIMIT 1;

theCharVar = 'Hello from P2726';
dsply theCharVar;
P999();
P1072();
P813();
return;