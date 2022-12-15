**free

ctl-opt dftactgrp(*no);

dcl-pi P713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T1267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1267 LIMIT 1;

theCharVar = 'Hello from P713';
dsply theCharVar;
P305();
P375();
P176();
return;