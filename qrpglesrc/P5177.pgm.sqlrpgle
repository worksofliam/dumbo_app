**free

ctl-opt dftactgrp(*no);

dcl-pi P5177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3446.rpgleinc'
/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P3960.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P5177';
dsply theCharVar;
P3446();
P602();
P3960();
return;