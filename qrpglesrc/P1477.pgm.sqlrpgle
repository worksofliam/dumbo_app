**free

ctl-opt dftactgrp(*no);

dcl-pi P1477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P512.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T650') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T650 LIMIT 1;

theCharVar = 'Hello from P1477';
dsply theCharVar;
P512();
P24();
P65();
return;