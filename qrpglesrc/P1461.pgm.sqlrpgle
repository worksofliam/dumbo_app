**free

ctl-opt dftactgrp(*no);

dcl-pi P1461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P1215.rpgleinc'

dcl-ds theTable extname('T621') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T621 LIMIT 1;

theCharVar = 'Hello from P1461';
dsply theCharVar;
P777();
P271();
P1215();
return;