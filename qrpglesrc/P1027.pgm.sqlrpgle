**free

ctl-opt dftactgrp(*no);

dcl-pi P1027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P1027';
dsply theCharVar;
P271();
P176();
P351();
return;