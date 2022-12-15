**free

ctl-opt dftactgrp(*no);

dcl-pi P3871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P3786.rpgleinc'
/copy 'qrpgleref/P1872.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P3871';
dsply theCharVar;
P929();
P3786();
P1872();
return;