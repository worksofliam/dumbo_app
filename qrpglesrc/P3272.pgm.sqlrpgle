**free

ctl-opt dftactgrp(*no);

dcl-pi P3272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1379.rpgleinc'
/copy 'qrpgleref/P1878.rpgleinc'
/copy 'qrpgleref/P3083.rpgleinc'

dcl-ds theTable extname('T1100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1100 LIMIT 1;

theCharVar = 'Hello from P3272';
dsply theCharVar;
P1379();
P1878();
P3083();
return;