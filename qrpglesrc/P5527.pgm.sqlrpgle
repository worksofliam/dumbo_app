**free

ctl-opt dftactgrp(*no);

dcl-pi P5527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2247.rpgleinc'
/copy 'qrpgleref/P3708.rpgleinc'
/copy 'qrpgleref/P2304.rpgleinc'

dcl-ds theTable extname('T866') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T866 LIMIT 1;

theCharVar = 'Hello from P5527';
dsply theCharVar;
P2247();
P3708();
P2304();
return;