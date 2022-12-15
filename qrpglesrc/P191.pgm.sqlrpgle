**free

ctl-opt dftactgrp(*no);

dcl-pi P191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P191';
dsply theCharVar;
P82();
P68();
P113();
return;