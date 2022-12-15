**free

ctl-opt dftactgrp(*no);

dcl-pi P5307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'

dcl-ds theTable extname('T1871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1871 LIMIT 1;

theCharVar = 'Hello from P5307';
dsply theCharVar;
P423();
P1466();
P1111();
return;