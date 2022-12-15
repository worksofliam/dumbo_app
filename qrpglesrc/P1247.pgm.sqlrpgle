**free

ctl-opt dftactgrp(*no);

dcl-pi P1247;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds T1671 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1671 FROM T1671 LIMIT 1;

theCharVar = 'Hello from P1247';
dsply theCharVar;
P491();
P405();
P756();
return;