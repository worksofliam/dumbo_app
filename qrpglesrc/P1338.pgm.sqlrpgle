**free

ctl-opt dftactgrp(*no);

dcl-pi P1338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1281.rpgleinc'
/copy 'qrpgleref/P1215.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P1338';
dsply theCharVar;
P1281();
P1215();
P143();
return;