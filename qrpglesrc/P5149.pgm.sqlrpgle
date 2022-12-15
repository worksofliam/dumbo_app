**free

ctl-opt dftactgrp(*no);

dcl-pi P5149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P2927.rpgleinc'
/copy 'qrpgleref/P4765.rpgleinc'

dcl-ds theTable extname('T739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T739 LIMIT 1;

theCharVar = 'Hello from P5149';
dsply theCharVar;
P1081();
P2927();
P4765();
return;