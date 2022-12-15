**free

ctl-opt dftactgrp(*no);

dcl-pi P513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P513';
dsply theCharVar;
P17();
P466();
P39();
return;