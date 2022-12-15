**free

ctl-opt dftactgrp(*no);

dcl-pi P3667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3207.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P2842.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P3667';
dsply theCharVar;
P3207();
P604();
P2842();
return;