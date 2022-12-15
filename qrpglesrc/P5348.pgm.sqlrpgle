**free

ctl-opt dftactgrp(*no);

dcl-pi P5348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5184.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds theTable extname('T1291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1291 LIMIT 1;

theCharVar = 'Hello from P5348';
dsply theCharVar;
P5184();
P1318();
P457();
return;