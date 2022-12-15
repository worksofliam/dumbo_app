**free

ctl-opt dftactgrp(*no);

dcl-pi P3392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3110.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P3132.rpgleinc'

dcl-ds theTable extname('T738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T738 LIMIT 1;

theCharVar = 'Hello from P3392';
dsply theCharVar;
P3110();
P1073();
P3132();
return;