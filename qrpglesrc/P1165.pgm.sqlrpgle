**free

ctl-opt dftactgrp(*no);

dcl-pi P1165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P884.rpgleinc'

dcl-ds theTable extname('T906') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T906 LIMIT 1;

theCharVar = 'Hello from P1165';
dsply theCharVar;
P587();
P510();
P884();
return;