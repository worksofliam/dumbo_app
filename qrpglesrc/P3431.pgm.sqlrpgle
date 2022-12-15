**free

ctl-opt dftactgrp(*no);

dcl-pi P3431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P889.rpgleinc'
/copy 'qrpgleref/P3418.rpgleinc'
/copy 'qrpgleref/P2564.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P3431';
dsply theCharVar;
P889();
P3418();
P2564();
return;