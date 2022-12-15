**free

ctl-opt dftactgrp(*no);

dcl-pi P790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P775.rpgleinc'

dcl-ds theTable extname('T1395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1395 LIMIT 1;

theCharVar = 'Hello from P790';
dsply theCharVar;
P602();
P173();
P775();
return;