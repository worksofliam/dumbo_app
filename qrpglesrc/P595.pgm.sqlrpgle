**free

ctl-opt dftactgrp(*no);

dcl-pi P595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T639 LIMIT 1;

theCharVar = 'Hello from P595';
dsply theCharVar;
P496();
P485();
P211();
return;