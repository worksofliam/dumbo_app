**free

ctl-opt dftactgrp(*no);

dcl-pi P3992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds theTable extname('T1783') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1783 LIMIT 1;

theCharVar = 'Hello from P3992';
dsply theCharVar;
P449();
P1438();
P281();
return;