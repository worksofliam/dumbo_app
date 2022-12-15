**free

ctl-opt dftactgrp(*no);

dcl-pi P5220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4067.rpgleinc'
/copy 'qrpgleref/P4006.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'

dcl-ds theTable extname('T795') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T795 LIMIT 1;

theCharVar = 'Hello from P5220';
dsply theCharVar;
P4067();
P4006();
P649();
return;