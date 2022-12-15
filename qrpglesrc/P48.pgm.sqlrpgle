**free

ctl-opt dftactgrp(*no);

dcl-pi P48;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P48';
dsply theCharVar;
P21();
P38();
P47();
return;