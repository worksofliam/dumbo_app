**free

ctl-opt dftactgrp(*no);

dcl-pi P5375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3106.rpgleinc'
/copy 'qrpgleref/P3539.rpgleinc'
/copy 'qrpgleref/P2636.rpgleinc'

dcl-ds theTable extname('T1463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1463 LIMIT 1;

theCharVar = 'Hello from P5375';
dsply theCharVar;
P3106();
P3539();
P2636();
return;