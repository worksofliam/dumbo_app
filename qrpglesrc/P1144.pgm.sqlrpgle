**free

ctl-opt dftactgrp(*no);

dcl-pi P1144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P1124.rpgleinc'

dcl-ds theTable extname('T1683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1683 LIMIT 1;

theCharVar = 'Hello from P1144';
dsply theCharVar;
P425();
P123();
P1124();
return;