**free

ctl-opt dftactgrp(*no);

dcl-pi P1344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T1071') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1071 LIMIT 1;

theCharVar = 'Hello from P1344';
dsply theCharVar;
P11();
P1173();
P176();
return;