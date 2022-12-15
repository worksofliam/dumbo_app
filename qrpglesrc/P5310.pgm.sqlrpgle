**free

ctl-opt dftactgrp(*no);

dcl-pi P5310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1574.rpgleinc'
/copy 'qrpgleref/P5113.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'

dcl-ds theTable extname('T1377') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1377 LIMIT 1;

theCharVar = 'Hello from P5310';
dsply theCharVar;
P1574();
P5113();
P1162();
return;