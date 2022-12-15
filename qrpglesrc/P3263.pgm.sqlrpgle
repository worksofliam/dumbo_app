**free

ctl-opt dftactgrp(*no);

dcl-pi P3263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1027.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'

dcl-ds theTable extname('T1334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1334 LIMIT 1;

theCharVar = 'Hello from P3263';
dsply theCharVar;
P1027();
P159();
P852();
return;