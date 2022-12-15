**free

ctl-opt dftactgrp(*no);

dcl-pi P1367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'

dcl-ds theTable extname('T813') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T813 LIMIT 1;

theCharVar = 'Hello from P1367';
dsply theCharVar;
P236();
P496();
P1106();
return;