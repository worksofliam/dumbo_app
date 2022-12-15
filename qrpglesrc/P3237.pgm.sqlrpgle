**free

ctl-opt dftactgrp(*no);

dcl-pi P3237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P2349.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P3237';
dsply theCharVar;
P1137();
P1120();
P2349();
return;