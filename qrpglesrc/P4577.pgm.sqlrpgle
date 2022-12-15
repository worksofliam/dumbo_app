**free

ctl-opt dftactgrp(*no);

dcl-pi P4577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1904.rpgleinc'
/copy 'qrpgleref/P3048.rpgleinc'
/copy 'qrpgleref/P4273.rpgleinc'

dcl-ds theTable extname('T1519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1519 LIMIT 1;

theCharVar = 'Hello from P4577';
dsply theCharVar;
P1904();
P3048();
P4273();
return;