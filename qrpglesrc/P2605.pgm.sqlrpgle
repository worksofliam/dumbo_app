**free

ctl-opt dftactgrp(*no);

dcl-pi P2605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1582.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P2605';
dsply theCharVar;
P1582();
P407();
P1901();
return;