**free

ctl-opt dftactgrp(*no);

dcl-pi P755;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P755';
dsply theCharVar;
P20();
P531();
P28();
return;