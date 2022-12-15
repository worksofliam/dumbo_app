**free

ctl-opt dftactgrp(*no);

dcl-pi P1423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds theTable extname('T1') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1 LIMIT 1;

theCharVar = 'Hello from P1423';
dsply theCharVar;
P158();
P649();
P616();
return;