**free

ctl-opt dftactgrp(*no);

dcl-pi P1074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1002.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T127 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T127 FROM T127 LIMIT 1;

theCharVar = 'Hello from P1074';
dsply theCharVar;
P1002();
P163();
P61();
return;