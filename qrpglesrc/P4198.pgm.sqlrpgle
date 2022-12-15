**free

ctl-opt dftactgrp(*no);

dcl-pi P4198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P3497.rpgleinc'
/copy 'qrpgleref/P2887.rpgleinc'

dcl-ds theTable extname('T1251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1251 LIMIT 1;

theCharVar = 'Hello from P4198';
dsply theCharVar;
P21();
P3497();
P2887();
return;