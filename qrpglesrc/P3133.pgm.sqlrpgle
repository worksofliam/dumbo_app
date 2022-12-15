**free

ctl-opt dftactgrp(*no);

dcl-pi P3133;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3109.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P1368.rpgleinc'

dcl-ds theTable extname('T868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T868 LIMIT 1;

theCharVar = 'Hello from P3133';
dsply theCharVar;
P3109();
P258();
P1368();
return;