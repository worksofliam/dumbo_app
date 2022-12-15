**free

ctl-opt dftactgrp(*no);

dcl-pi P3332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P1330.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'

dcl-ds theTable extname('T555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T555 LIMIT 1;

theCharVar = 'Hello from P3332';
dsply theCharVar;
P1207();
P1330();
P1011();
return;