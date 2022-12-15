**free

ctl-opt dftactgrp(*no);

dcl-pi P538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T314 LIMIT 1;

theCharVar = 'Hello from P538';
dsply theCharVar;
P68();
P299();
P157();
return;