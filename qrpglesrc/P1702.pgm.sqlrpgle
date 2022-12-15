**free

ctl-opt dftactgrp(*no);

dcl-pi P1702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1548.rpgleinc'
/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P1163.rpgleinc'

dcl-ds T1307 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1307 FROM T1307 LIMIT 1;

theCharVar = 'Hello from P1702';
dsply theCharVar;
P1548();
P637();
P1163();
return;