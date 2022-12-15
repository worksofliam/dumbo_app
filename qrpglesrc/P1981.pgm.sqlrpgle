**free

ctl-opt dftactgrp(*no);

dcl-pi P1981;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1492.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P1371.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P1981';
dsply theCharVar;
P1492();
P1104();
P1371();
return;