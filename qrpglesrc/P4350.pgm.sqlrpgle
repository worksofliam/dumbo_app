**free

ctl-opt dftactgrp(*no);

dcl-pi P4350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4246.rpgleinc'
/copy 'qrpgleref/P3214.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P4350';
dsply theCharVar;
P4246();
P3214();
P60();
return;