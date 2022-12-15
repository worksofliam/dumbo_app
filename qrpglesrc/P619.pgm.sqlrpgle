**free

ctl-opt dftactgrp(*no);

dcl-pi P619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P619';
dsply theCharVar;
P286();
P514();
P453();
return;