**free

ctl-opt dftactgrp(*no);

dcl-pi P3292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P1776.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1833 LIMIT 1;

theCharVar = 'Hello from P3292';
dsply theCharVar;
P250();
P1776();
P23();
return;