**free

ctl-opt dftactgrp(*no);

dcl-pi P1043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T507 LIMIT 1;

theCharVar = 'Hello from P1043';
dsply theCharVar;
P783();
P467();
P50();
return;