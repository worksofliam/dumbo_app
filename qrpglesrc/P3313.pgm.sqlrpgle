**free

ctl-opt dftactgrp(*no);

dcl-pi P3313;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1963.rpgleinc'
/copy 'qrpgleref/P1972.rpgleinc'
/copy 'qrpgleref/P3096.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P3313';
dsply theCharVar;
P1963();
P1972();
P3096();
return;