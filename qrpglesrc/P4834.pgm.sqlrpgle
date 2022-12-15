**free

ctl-opt dftactgrp(*no);

dcl-pi P4834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3397.rpgleinc'
/copy 'qrpgleref/P3208.rpgleinc'
/copy 'qrpgleref/P3404.rpgleinc'

dcl-ds theTable extname('T1205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1205 LIMIT 1;

theCharVar = 'Hello from P4834';
dsply theCharVar;
P3397();
P3208();
P3404();
return;