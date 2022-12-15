**free

ctl-opt dftactgrp(*no);

dcl-pi P4702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3191.rpgleinc'
/copy 'qrpgleref/P3692.rpgleinc'
/copy 'qrpgleref/P3639.rpgleinc'

dcl-ds T1369 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1369 FROM T1369 LIMIT 1;

theCharVar = 'Hello from P4702';
dsply theCharVar;
P3191();
P3692();
P3639();
return;