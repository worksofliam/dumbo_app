**free

ctl-opt dftactgrp(*no);

dcl-pi P1820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'

dcl-ds T1554 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1554 FROM T1554 LIMIT 1;

theCharVar = 'Hello from P1820';
dsply theCharVar;
P96();
P328();
P1111();
return;