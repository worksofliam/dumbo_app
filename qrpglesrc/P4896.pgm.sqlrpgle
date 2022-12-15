**free

ctl-opt dftactgrp(*no);

dcl-pi P4896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3112.rpgleinc'
/copy 'qrpgleref/P3178.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'

dcl-ds theTable extname('T1780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1780 LIMIT 1;

theCharVar = 'Hello from P4896';
dsply theCharVar;
P3112();
P3178();
P911();
return;