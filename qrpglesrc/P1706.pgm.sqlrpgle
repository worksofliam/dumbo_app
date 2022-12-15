**free

ctl-opt dftactgrp(*no);

dcl-pi P1706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds T1078 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1078 FROM T1078 LIMIT 1;

theCharVar = 'Hello from P1706';
dsply theCharVar;
P1222();
P746();
P749();
return;