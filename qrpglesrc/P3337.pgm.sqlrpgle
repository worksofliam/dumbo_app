**free

ctl-opt dftactgrp(*no);

dcl-pi P3337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3157.rpgleinc'
/copy 'qrpgleref/P3021.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'

dcl-ds theTable extname('T475') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T475 LIMIT 1;

theCharVar = 'Hello from P3337';
dsply theCharVar;
P3157();
P3021();
P358();
return;