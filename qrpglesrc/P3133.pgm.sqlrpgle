**free

ctl-opt dftactgrp(*no);

dcl-pi P3133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1356.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P3133';
dsply theCharVar;
P701();
P52();
P1356();
return;