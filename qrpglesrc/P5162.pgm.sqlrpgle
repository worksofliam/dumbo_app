**free

ctl-opt dftactgrp(*no);

dcl-pi P5162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3947.rpgleinc'
/copy 'qrpgleref/P5052.rpgleinc'
/copy 'qrpgleref/P3014.rpgleinc'

dcl-ds theTable extname('T1748') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1748 LIMIT 1;

theCharVar = 'Hello from P5162';
dsply theCharVar;
P3947();
P5052();
P3014();
return;