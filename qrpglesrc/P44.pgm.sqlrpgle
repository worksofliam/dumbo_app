**free

ctl-opt dftactgrp(*no);

dcl-pi P44;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P44';
dsply theCharVar;
P3();
P25();
P35();
return;