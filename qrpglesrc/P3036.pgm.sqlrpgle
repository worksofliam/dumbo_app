**free

ctl-opt dftactgrp(*no);

dcl-pi P3036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P1324.rpgleinc'

dcl-ds theTable extname('T525') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T525 LIMIT 1;

theCharVar = 'Hello from P3036';
dsply theCharVar;
P412();
P3();
P1324();
return;