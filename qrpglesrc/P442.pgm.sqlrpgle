**free

ctl-opt dftactgrp(*no);

dcl-pi P442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P442';
dsply theCharVar;
P301();
P239();
P430();
return;