**free

ctl-opt dftactgrp(*no);

dcl-pi P1729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'

dcl-ds T1177 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1177 FROM T1177 LIMIT 1;

theCharVar = 'Hello from P1729';
dsply theCharVar;
P416();
P429();
P1433();
return;