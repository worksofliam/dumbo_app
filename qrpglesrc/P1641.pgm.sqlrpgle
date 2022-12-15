**free

ctl-opt dftactgrp(*no);

dcl-pi P1641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P1583.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds T1679 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1679 FROM T1679 LIMIT 1;

theCharVar = 'Hello from P1641';
dsply theCharVar;
P80();
P1583();
P87();
return;