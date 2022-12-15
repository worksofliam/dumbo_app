**free

ctl-opt dftactgrp(*no);

dcl-pi P1425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'
/copy 'qrpgleref/P1303.rpgleinc'

dcl-ds T1827 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1827 FROM T1827 LIMIT 1;

theCharVar = 'Hello from P1425';
dsply theCharVar;
P474();
P1400();
P1303();
return;