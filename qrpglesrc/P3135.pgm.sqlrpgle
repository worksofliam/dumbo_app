**free

ctl-opt dftactgrp(*no);

dcl-pi P3135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1571.rpgleinc'
/copy 'qrpgleref/P2180.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'

dcl-ds T630 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T630 FROM T630 LIMIT 1;

theCharVar = 'Hello from P3135';
dsply theCharVar;
P1571();
P2180();
P1339();
return;