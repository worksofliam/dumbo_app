**free

ctl-opt dftactgrp(*no);

dcl-pi P5413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1665.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'

dcl-ds theTable extname('T1411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1411 LIMIT 1;

theCharVar = 'Hello from P5413';
dsply theCharVar;
P1665();
P943();
P1249();
return;