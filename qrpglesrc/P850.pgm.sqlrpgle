**free

ctl-opt dftactgrp(*no);

dcl-pi P850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P850';
dsply theCharVar;
P781();
P301();
P449();
return;