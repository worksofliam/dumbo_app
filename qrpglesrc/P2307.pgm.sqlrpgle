**free

ctl-opt dftactgrp(*no);

dcl-pi P2307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P2307';
dsply theCharVar;
P425();
P286();
P760();
return;