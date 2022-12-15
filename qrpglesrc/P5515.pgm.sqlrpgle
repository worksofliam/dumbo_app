**free

ctl-opt dftactgrp(*no);

dcl-pi P5515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1841.rpgleinc'
/copy 'qrpgleref/P4988.rpgleinc'
/copy 'qrpgleref/P4104.rpgleinc'

dcl-ds theTable extname('T1801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1801 LIMIT 1;

theCharVar = 'Hello from P5515';
dsply theCharVar;
P1841();
P4988();
P4104();
return;