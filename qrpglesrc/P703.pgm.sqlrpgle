**free

ctl-opt dftactgrp(*no);

dcl-pi P703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P703';
dsply theCharVar;
P112();
P462();
P347();
return;