**free

ctl-opt dftactgrp(*no);

dcl-pi P4338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P3594.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P4338';
dsply theCharVar;
P119();
P1358();
P3594();
return;