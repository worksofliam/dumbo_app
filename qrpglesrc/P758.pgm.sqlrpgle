**free

ctl-opt dftactgrp(*no);

dcl-pi P758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'

dcl-ds theTable extname('T1021') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1021 LIMIT 1;

theCharVar = 'Hello from P758';
dsply theCharVar;
P276();
P405();
P396();
return;