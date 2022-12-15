**free

ctl-opt dftactgrp(*no);

dcl-pi P1339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds T1518 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1518 FROM T1518 LIMIT 1;

theCharVar = 'Hello from P1339';
dsply theCharVar;
P1260();
P605();
P761();
return;