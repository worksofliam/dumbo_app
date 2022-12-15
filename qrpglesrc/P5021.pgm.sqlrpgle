**free

ctl-opt dftactgrp(*no);

dcl-pi P5021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'

dcl-ds theTable extname('T258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T258 LIMIT 1;

theCharVar = 'Hello from P5021';
dsply theCharVar;
P1146();
P633();
P3033();
return;