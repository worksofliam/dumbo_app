**free

ctl-opt dftactgrp(*no);

dcl-pi P5594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3036.rpgleinc'
/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P1608.rpgleinc'

dcl-ds theTable extname('T746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T746 LIMIT 1;

theCharVar = 'Hello from P5594';
dsply theCharVar;
P3036();
P2893();
P1608();
return;