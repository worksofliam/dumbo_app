**free

ctl-opt dftactgrp(*no);

dcl-pi P1154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P1154';
dsply theCharVar;
P121();
P8();
P817();
return;