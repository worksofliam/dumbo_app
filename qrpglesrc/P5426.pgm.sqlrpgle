**free

ctl-opt dftactgrp(*no);

dcl-pi P5426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5206.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P3619.rpgleinc'

dcl-ds theTable extname('T931') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T931 LIMIT 1;

theCharVar = 'Hello from P5426';
dsply theCharVar;
P5206();
P404();
P3619();
return;