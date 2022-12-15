**free

ctl-opt dftactgrp(*no);

dcl-pi P5297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3518.rpgleinc'
/copy 'qrpgleref/P1731.rpgleinc'
/copy 'qrpgleref/P3009.rpgleinc'

dcl-ds theTable extname('T1636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1636 LIMIT 1;

theCharVar = 'Hello from P5297';
dsply theCharVar;
P3518();
P1731();
P3009();
return;