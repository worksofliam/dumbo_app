**free

ctl-opt dftactgrp(*no);

dcl-pi P686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P686';
dsply theCharVar;
P111();
P50();
P205();
return;