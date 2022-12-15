**free

ctl-opt dftactgrp(*no);

dcl-pi P5153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5077.rpgleinc'
/copy 'qrpgleref/P3540.rpgleinc'
/copy 'qrpgleref/P4258.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P5153';
dsply theCharVar;
P5077();
P3540();
P4258();
return;